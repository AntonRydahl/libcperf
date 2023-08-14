import numpy as np

def aggregate_output(obj):
    for funname in obj:
        for hostdev in obj[funname]:
            todelete = []
            for version in list(obj[funname][hostdev]):
                if version[-1].isdigit() and version[-2] == '_':
                    version_short = version[:-2]
                    if version_short in obj[funname][hostdev]:
                        #print(len(obj[funname][hostdev][version_short]))
                        #print(obj[funname][hostdev][version_short])
                        #print(obj[funname][hostdev][version])
                        tmp = np.concatenate((obj[funname][hostdev][version_short],obj[funname][hostdev][version]))
                        obj[funname][hostdev][version_short] = tmp
                        #print(len(obj[funname][hostdev][version_short]))
                    else:
                        obj[funname][hostdev][version_short] = obj[funname][hostdev][version].copy()
                    #print(f"{version} is in fact {version_short}")
                    todelete.append(version)
                    del obj[funname][hostdev][version]
    return obj