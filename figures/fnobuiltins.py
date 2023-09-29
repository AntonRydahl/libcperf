import numpy as np
from python_helpers.gather_data import gather_data
from python_helpers.aggregate_output import aggregate_output
from python_helpers.max_error import max_error
import warnings
cache = {}
import matplotlib.pyplot as plt


def main():
    old_timings = {}

    old_timings["sm_80"] = {
        "__nv_modf": 14.6430827,
        "modf": 14.693278600000001,
        "__nv_modff": 12.878382699999998,
        "modff": 12.8845011,
        "__nv_remainder": 14.8229472,
        "remainder": 14.5764236,
        "__nv_remainderf": 13.495459600000002,
        "remainderf": 13.4709771
    }
    old_timings["sm_70"] = {
        "__nv_modf": 54.017287100000004,
        "modf": 54.44980220000001,
        "__nv_modff": 45.0024926,
        "modff": 45.4932082,
        "__nv_remainder": 55.4795367,
        "remainder": 54.6605532,
        "__nv_remainderf": 50.763365300000004,
        "remainderf": 51.056478999999996
    }

    register_counts = {}
    register_counts["sm_80"] = {}
    register_counts["sm_80"]["remainder"]={
        "new" : {
            "reg" : 70,
            "stack" : 24
        },
        "old" : {
            "reg" : 44,
            "stack" : 88
        }
    }
    register_counts["sm_80"]["remainderf"]={
        "new" : {
            "reg" : 52,
            "stack" : 24
        },
        "old" : {
            "reg" : 32,
            "stack" : 88
        }
    }
    register_counts["sm_80"]["modf"]={
        "new" : {
            "reg" : 52,
            "stack" : 24
        },
        "old" : {
            "reg" : 38,
            "stack" : 80
        }
    }
    register_counts["sm_80"]["modff"]={
        "new" : {
            "reg" : 46,
            "stack" : 24
        },
        "old" : {
            "reg" : 38,
            "stack" : 80
        }
    }


    # plot settings
    width = 0.2
    offset = (width/2.0)+0.01

    for gpu in old_timings:
        timings = gather_data(f"results/timings/{gpu}")
        nbins = len(old_timings[gpu])
        x = np.arange(nbins)
        told = []
        tnew = []
        legends = []
        print(gpu)
        for version in old_timings[gpu]:
            funname = version.split('_')[-1]
            newtime = np.mean(timings[funname]["device"][version])
            oldtime = old_timings[gpu][version]
            tnew.append(newtime)
            told.append(oldtime)
            legends.append(version)
            print(oldtime/newtime)
        plt.figure(figsize=(10, 5))
        plt.bar(x-offset, told, width, color='orange',hatch='/')
        plt.bar(x+offset, tnew, width, color='green')
        plt.ylabel('Average Wall Time in MS',fontsize=18)
        plt.ylim([0, 58])
        plt.xticks(x, legends,rotation=18,ha="right")
        plt.title(f"Dependence on -fbuiltin for {gpu}",fontsize=24)
        plt.tick_params(axis='both', which='major', labelsize=18, width=2.5, length=10)
        plt.legend(["-fbuiltin","-fno-builtin"],loc='center left', bbox_to_anchor=(1, 0.5),fontsize=18)
        plt.savefig(f"fnobuiltin_{gpu}.pdf",bbox_inches = 'tight')

    for gpu in register_counts:
        nbins = len(register_counts[gpu])
        x = np.arange(nbins)
        regold = []
        regnew = []
        stackold = []
        stacknew = []
        legends = []
        print(gpu)
        for fun in register_counts[gpu]:
            legends.append(fun)
            regnew.append(register_counts[gpu][fun]["new"]["reg"])
            regold.append(register_counts[gpu][fun]["old"]["reg"])
            stacknew.append(register_counts[gpu][fun]["new"]["stack"])
            stackold.append(register_counts[gpu][fun]["old"]["stack"])

        plt.figure(figsize=(10, 5))
        plt.bar(x-3.0*offset, regold, width, color='orange',hatch='X')
        plt.bar(x-offset, regnew, width, color='green',hatch='X')
        plt.bar(x+offset, stackold, width, color='orange',hatch='|')
        plt.bar(x+3.0*offset, stacknew, width, color='green',hatch='|')
        plt.ylabel('Count',fontsize=18)
        plt.xticks(x, legends,rotation=18,ha="right")
        plt.title(f"Regiter Allocation and -fbuiltin for {gpu}",fontsize=24)
        plt.tick_params(axis='both', which='major', labelsize=18, width=2.5, length=10)
        plt.legend(["registers -fbuiltin","registers -fno-builtin","stack -fbuiltin","stack -fno-builtin"],loc='center left', bbox_to_anchor=(1, 0.5),fontsize=18)
        plt.savefig(f"fnobuiltin_registers_{gpu}.pdf",bbox_inches = 'tight')

        

if __name__ == "__main__":
    with warnings.catch_warnings():
        warnings.simplefilter("ignore")
        main()