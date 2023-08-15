import numpy as np
from python_helpers.gather_data import gather_data
from python_helpers.aggregate_output import aggregate_output
from python_helpers.max_error import max_error
import warnings
cache = {}

def stats_for(gpu,epsilonabs=float("inf"),epsilonrel=float("inf"),epsilonulp=float("inf"),detailedprint=False):
    global cache
    # Reusing previously aggregated data if possible
    if not gpu in cache:
        cache[gpu] = {}
        output = gather_data(f"results/output/{gpu}")
        output = aggregate_output(output)
        cache[gpu]["output"] = output
        timings = gather_data(f"results/timings/{gpu}")
        cache[gpu]["timings"] = timings
    output = cache[gpu]["output"]
    timings = cache[gpu]["timings"]
    results = {
        "ocml" : [],
        "nv" : [],
        "builtin" : [],
        "libc" : []
    }
    correct = {
        "ocml" : [],
        "nv" : [],
        "builtin" : [],
        "libc" : []
    }
    incorrect = {
        "ocml" : [],
        "nv" : [],
        "builtin" : [],
        "libc" : []
    }
    #print(f"========================= {gpu} Results =========================")
    funcounter = 0
    fastest_set = []
    for funname in timings:
        funcounter = funcounter + 1
        if funname in output and "device" in timings[funname]:
            if "host" in output[funname] and "device" in output[funname]:
                err = max_error(output[funname],epsilonabs,epsilonrel,epsilonulp)
                mintime = float('inf')
                minfun = None
                for version in err:
                    obj = None
                    if funname in err[version]:
                        obj = err[version][funname]
                    elif f"__builtin_{funname}" in err[version]:
                        obj = err[version][f"__builtin_{funname}"]
                    else:
                        print(f"No host baseline for {version}")
                        continue
                    if not version in timings[funname]["device"]:
                        print(f"No device timings for {version}")
                        continue
                    abserr = obj["abserr"]
                    relerr = obj["relerr"]
                    ulpbool = obj["ulp"]
                    absbool = obj["absbool"]
                    relbool = obj["relbool"]
                    if detailedprint:
                        print(f" |- {version} vs __builtin_{funname} max error: {abserr}")
                    time = np.mean(timings[funname]["device"][version])
                    if detailedprint:
                        print(f" |--- time: {time}")
                    if time < mintime and (absbool or np.isinf(epsilonabs))\
                                and (relbool or np.isinf(epsilonrel))\
                                and (ulpbool or np.isinf(epsilonulp)):
                        mintime = time
                        minfun = version
                if minfun:
                    fastest_set.append(minfun)
                for version in err:
                    obj = None
                    if funname in err[version]:
                        obj = err[version][funname]
                    elif f"__builtin_{funname}" in err[version]:
                        obj = err[version][f"__builtin_{funname}"]
                    else:
                        print(f"No host baseline for {version}")
                        continue
                    if not version in timings[funname]["device"]:
                        print(f"No device timings for {version}")
                        continue
                    abserr = obj["abserr"]
                    relerr = obj["relerr"]
                    ulpbool = obj["ulp"]
                    absbool = obj["absbool"]
                    relbool = obj["relbool"]
                    if (absbool or np.isinf(epsilonabs))\
                                and (relbool or np.isinf(epsilonrel))\
                                and (ulpbool or np.isinf(epsilonulp)):
                        time = np.mean(timings[funname]["device"][version])
                        reltime = time/mintime
                        #if (reltime > 2):
                        #    print(f"{version}: {time}/{mintime}={reltime}")
                        if "nv" in version:
                            results["nv"].append(reltime)
                            correct["nv"].append(version)
                        elif "ocml" in version:
                            results["ocml"].append(reltime)
                            correct["ocml"].append(version)
                        elif "builtin" in version:
                            results["builtin"].append(reltime)
                            correct["builtin"].append(version)
                        else:
                            results["libc"].append(reltime)
                            correct["libc"].append(version)
                    else:
                        tmpobj = {
                            "name" : version,
                            "ulpbool" : ulpbool,
                            "abserr" : abserr,
                            "absbool" : absbool,
                            "relerr" : relerr,
                            "relbool" : relbool
                        }
                        if "nv" in version:
                            incorrect["nv"].append(tmpobj)
                        elif "ocml" in version:
                            incorrect["ocml"].append(tmpobj)
                        elif "builtin" in version:
                            incorrect["builtin"].append(tmpobj)
                        else:
                            incorrect["libc"].append(tmpobj)
    if detailedprint:
        for version in results:
            ncorrect = len(correct[version])
            nincorrect = len(incorrect[version])
            total = ncorrect+nincorrect
            print(f"{version}:")
            if len(results[version]) > 0:
                print(f" |- Correct: {len(results[version])}/{funcounter} - best possible is {total}")
                print(f" |- Score: {np.mean(results[version])}")
            else:
                print(f" |- found no correct {version} functions")
            tmpcorrect = correct[version]
            tmpincorrect = incorrect[version]
            print(f" |- incorrect: {tmpincorrect}")
            #print(f" |- correct: {tmpcorrect}")
    #print(fastest_set)
    print("Epsilon & Architecture & Version & Correct & $\\bar{t}$\\\\")
    for version in results:
        #if "builtin" in version:
        #    print(correct[version])
        ncorrect = len(correct[version])
        nincorrect = len(incorrect[version])
        total = ncorrect+nincorrect
        if len(results[version]) > 0:
            b1 = '{'
            b2 = '}'
            epsstring = ""
            if not np.isinf(epsilonulp):
                epsstring = f"$\\epsilon_{b1}ULP{b2}={int(epsilonulp)}$"
            if not np.isinf(epsilonabs):
                epsstring = f"$\\epsilon_{b1}abs{b2}={epsilonabs}$"
            if not np.isinf(epsilonrel):
                epsstring = f"$\\epsilon_{b1}rel{b2}={epsilonrel}$"
            versionstr = "LLVM LIBM"
            if "nv" in version:
                versionstr = "CUDA Math"
            elif "ocml" in version:
                versionstr = "HIP Math"
            elif "builtin" in version:
                versionstr = "LLVM built-in"
            gpustr=gpu.replace("_","\\_")
            print(f"{epsstring} & {gpustr} & {versionstr} & $\\frac{b1}{len(results[version])}{b2}{b1}{total}{b2}$ & {np.round(np.mean(results[version]),4)} \\\\")    

def main():
    gpus = ["gfx90a","gfx906","sm_70","sm_80"]

    epsilonrel = 1e-6
    print(f"=================================================================")
    print(f"Relative error of {epsilonrel}")
    print(f"=================================================================\n")
    for gpu in gpus:
        stats_for(gpu,epsilonrel=epsilonrel)

    epsilonrel = 1e-9
    print(f"=================================================================")
    print(f"Relative error of {epsilonrel}")
    print(f"=================================================================\n")
    for gpu in gpus:
        stats_for(gpu,epsilonrel=epsilonrel)

    # epsilonabs = 1e-6
    # print(f"=================================================================")
    # print(f"Absolute error of {epsilonabs}")
    # print(f"=================================================================\n")
    # for gpu in gpus:
    #     stats_for(gpu,epsilonabs=epsilonabs)
    
    # epsilonabs = 1e-9
    # print(f"=================================================================")
    # print(f"Absolute error of {epsilonabs}")
    # print(f"=================================================================\n")
    # for gpu in gpus:
    #     stats_for(gpu,epsilonabs=epsilonabs)

    maxulp = 8.0
    print(f"=================================================================")
    print(f"Within {maxulp} ULP")
    print(f"=================================================================\n")
    for gpu in gpus:
        stats_for(gpu,epsilonulp=maxulp)

    maxulp = 4.0
    print(f"=================================================================")
    print(f"Within {maxulp} ULP")
    print(f"=================================================================\n")
    for gpu in gpus:
        stats_for(gpu,epsilonulp=maxulp)

if __name__ == "__main__":
    with warnings.catch_warnings():
        warnings.simplefilter("ignore")
        main()

# def stats_for(gpu,epsilonabs):
#     output = gather_data(f"results/output/{gpu}")
#     output = aggregate_output(output)
#     timings = gather_data(f"results/timings/{gpu}")
#     for funname in timings:
#         if funname in output and "device" in timings[funname]:
#             print(funname)
#             if "host" in output[funname] and "device" in output[funname]:
#                 err = max_error(output[funname])
#                 for version in err:
#                     if f"__builtin_{funname}" in err[version]:
#                         elem = err[version][f"__builtin_{funname}"]["abserr"]
#                         print(f" |- {version} vs __builtin_{funname} max error: {elem}")
#                         if version in timings[funname]["device"]:
#                             time = np.mean(timings[funname]["device"][version])
#                             print(f" |--- time: {time}")
