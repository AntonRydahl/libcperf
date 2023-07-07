#!/usr/bin/env python3
import numpy as np
import numpy.random as random
import matplotlib.pyplot as plt
import sys, getopt
import os

plots_per_line = 3
plot_counter = 1

def main():
    prevfun = ""
    readme = open("timing_histograms.md","w")
    readme.write("# Timings for Host and Device Versions of the Math Library\n")
    for i in range(plots_per_line):
        readme.write("| ")
    readme.write("|\n")
    for i in range(plots_per_line):
        readme.write("|:-----:")
    readme.write("|\n")
    for subdir, dirs, files in os.walk('./results/timings/'):
        funname = subdir.split('/')[3]
        if (not funname):
            continue
        if prevfun == funname:
            continue
        prevfun = funname
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
    if not os.path.exists(hostdir):
        print(f"No such directory: {hostdir}")
        return
    hostfiles = [f for f in os.listdir(hostdir) if os.path.isfile(os.path.join(hostdir, f))]

    if not hostfiles or not devicefiles:
        print(f"Missing host or device files")
        return

    minval = 1000000
    maxval = -minval
    for fun in devicefiles:
        data = np.loadtxt(os.path.join(devdir,fun), comments="#", delimiter="\n", unpack=False,dtype='double')
        minval = min(minval,min(data))
        maxval = max(maxval,max(data))
    for fun in hostfiles:
        data = np.loadtxt(os.path.join(hostdir,fun), comments="#", delimiter="\n", unpack=False,dtype='double')
        minval = min(minval,min(data))
        maxval = max(maxval,max(data))
    
    bins = np.linspace(minval,maxval, 50)

    plt.figure()

    for fun in devicefiles:
        data = np.loadtxt(os.path.join(devdir,fun), comments="#", delimiter="\n", unpack=False,dtype='double')
        med = np.median(data)
        color='green'
        if "ocml" in fun:
            color='orange'
        if "builtin" in fun:
            color='cornflowerblue'
        plt.hist(data, bins, color=color, alpha=0.5, label=f" {fun}")
        plt.axvline(x = med, color=color, label=f" median({fun})={np.round(med,2)}")
    for fun in hostfiles:
        data = np.loadtxt(os.path.join(hostdir,fun), comments="#", delimiter="\n", unpack=False,dtype='double')
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

    if (plot_counter % plots_per_line) == 0:
        readme.write(f"![{funname}]({dir}/{funname}.png)\n")
    else:
        readme.write(f"![{funname}]({dir}/{funname}.png)|")
    plot_counter = plot_counter + 1

if __name__ == "__main__":
    main()