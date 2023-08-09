#!/usr/bin/env python3
import numpy as np
import numpy.random as random
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import sys, getopt
import os

plots_per_line = 2
plot_counter = 1

def main():
    global plot_counter
    for arch in ["gfx90a","gfx906","sm_70","sm_80"]:
        plot_counter=1
        prevfun = ""
        readme = open(f"timing_histograms_{arch}.md","w")
        readme.write("# Timings for Generic LLVM LIBC, LLVM Built-in, and HIP Versions of the Math Functions from the C Standard Library\n")
        for i in range(plots_per_line):
            readme.write("| ")
        readme.write("|\n")
        for i in range(plots_per_line):
            readme.write("|:-----:")
        readme.write("|\n")
        funnames = []
        for subdir, dirs, files in sorted(os.walk(f'./results/timings/{arch}/')):
            funname = subdir.split('/')[4]
            if (not funname):
                continue
            if prevfun == funname:
                continue
            prevfun = funname
            funnames.append(funname)
            make_hist(funname,subdir,readme)
        readme.close()

def make_hist(funname,dir,readme):
    global plot_counter
    global plots_per_line
    print(f"Making timings histrogram for {funname}")
    print(os.path.join(dir,"device"))
    devdir = os.path.join(dir,"device/")
    if not os.path.exists(devdir):
        print(f"No such directory: {devdir}")
        return
    devicefiles = [f for f in os.listdir(devdir) if os.path.isfile(os.path.join(devdir, f))]
    hostdir = os.path.join(dir,"host/")
    hostfiles = []
    if not os.path.exists(hostdir):
        print(f"No such directory: {hostdir}")
    else: 
        hostfiles = [f for f in os.listdir(hostdir) if os.path.isfile(os.path.join(hostdir, f))]

    if not devicefiles:
        print(f"Missing device files")
        return

    minval = 1000000
    maxval = -minval
    for fun in devicefiles:
        try:
            data = np.loadtxt(os.path.join(devdir,fun), comments="#", unpack=False,dtype='double')
            minval = min(minval,min(data))
            maxval = max(maxval,max(data))
        except:
            print(f"Error when reading file {os.path.join(devdir,fun)}")
    gpumin = minval
    gpumax = maxval
    for fun in hostfiles:
        data = np.loadtxt(os.path.join(hostdir,fun), comments="#", unpack=False,dtype='double')
        minval = min(minval,min(data))
        maxval = max(maxval,max(data))
    
    bins = np.linspace(minval,maxval, 50)
    gpubins = np.linspace(gpumin,gpumax, 50)

    plt.figure()

    for fun in devicefiles:
        try:
            data = np.loadtxt(os.path.join(devdir,fun), comments="#", unpack=False,dtype='double')
            med = np.median(data)
            color='green'
            if "ocml" in fun:
                color='orange'
            if "builtin" in fun:
                color='cornflowerblue'
            plt.hist(data, gpubins, color=color, alpha=0.5, label=f" {fun}")
            plt.axvline(x = med, color=color, label=f" median({fun})={np.round(med,2)}")
        except:
            print(f"Error when reading file {os.path.join(devdir,fun)}")
    for fun in hostfiles:
        data = np.loadtxt(os.path.join(hostdir,fun), comments="#", unpack=False,dtype='double')
        med = np.median(data)
        color='purple'
        if "builtin" in fun:
            color='red'
        plt.hist(data, bins, color=color, alpha=0.5, label=f"host {fun}")
        plt.axvline(x = med, color=color, label=f"median(host {fun})={np.round(med,2)}")

    plt.legend(loc='upper right')
    plt.xlabel('Wall Time in MS',fontsize=15)
    plt.ylabel('Observations',fontsize=15)
    plt.title(funname)
    plt.savefig(f"{dir}/{funname}.png")
    plt.close()

    plt.figure()

    ## Only GPU timings
    for fun in devicefiles:
        try:
            data = np.loadtxt(os.path.join(devdir,fun), comments="#", unpack=False,dtype='double')
            med = np.median(data)
            color='green'
            if "ocml" in fun:
                color='orange'
            if "builtin" in fun:
                color='cornflowerblue'
            plt.hist(data, gpubins, color=color, alpha=0.5, label=f" {fun}")
            plt.axvline(x = med, color=color, label=f" median({fun})={np.round(med,2)}")
        except:
            print(f"Error when reading file {os.path.join(devdir,fun)}")

    plt.legend(loc='upper right')
    plt.xlabel('Wall Time in MS',fontsize=15)
    plt.ylabel('Observations',fontsize=15)
    plt.title(funname,fontsize=20)
    plt.savefig(f"{dir}/{funname}_device_only.png")
    plt.close()

    if (plot_counter % plots_per_line) == 0:
        readme.write(f"![{funname}]({dir}/{funname}_device_only.png)\n")
    else:
        readme.write(f"![{funname}]({dir}/{funname}_device_only.png)|")
    plot_counter = plot_counter + 1

if __name__ == "__main__":
    main()