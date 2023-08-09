#!/usr/bin/env python3
import numpy as np
import numpy.random as random
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import sys, getopt
import os

plots_per_line = 2

def main():
    for arch in ["gfx90a","gfx906","sm_70","sm_80"]:
        prevfun = ""
        readme = open(f"error_plots_{arch}.md","w")
        readme.write(f"# Error Plots for {arch}\n")
        #for i in range(plots_per_line):
        #    readme.write("| ")
        #readme.write("|\n")
        readme.write("| Using LIBC Host Solution for Reference | Using Built-in Host Solution for Reference |\n")
        for i in range(plots_per_line):
            readme.write("|:-----:")
        readme.write("|\n")
        for subdir, dirs, files in sorted(os.walk(f'./results/output/{arch}/')):
            funname = subdir.split('/')[4]
            if (not funname):
                continue
            if prevfun == funname:
                continue
            prevfun = funname
            make_error_plot(funname,subdir,readme)
            #for file in files:
            #    print(os.path.join(subdir, file))
        readme.close()

def make_error_plot(funname,dir,readme):
    print(f"Making error plots for {funname}")
    print(os.path.join(dir,"device"))
    devdir = os.path.join(dir,"device/")
    if not os.path.exists(devdir):
        print(f"No such directory: {devdir}")
        return
    devicefiles = [f for f in os.listdir(devdir) if os.path.isfile(os.path.join(devdir, f)) and not("_1" in f) and not("_2" in f)]
    hostdir = os.path.join(dir,"host/")
    if not os.path.exists(hostdir):
        print(f"No such directory: {hostdir}")
        return
    hostfiles = [f for f in os.listdir(hostdir) if os.path.isfile(os.path.join(hostdir, f)) and not("_1" in f) and not("_2" in f)]

    if not hostfiles or not devicefiles:
        print(f"Missing host or device files")
        return

    libcfound = False
    builtinfound = False

    for hostfun in hostfiles:
        data = np.loadtxt(os.path.join(hostdir,hostfun), comments="#", unpack=False,dtype='double')
        reference = data
        maxval = 1e-100    
        for fun in devicefiles:
            data = np.loadtxt(os.path.join(devdir,fun), comments="#", unpack=False,dtype='double')
            tmp = data-reference
            tmpfinite = abs(tmp[finite(tmp)])
            if len(tmpfinite) < 1:
                print(f"None of the absolute errors from {os.path.join(devdir,fun)} are finite")
                return 

            maxval = max(maxval,max(tmpfinite))
            
        x = np.linspace(-np.pi,np.pi,len(reference))
        
        plt.figure()

        for fun in devicefiles:
            data = np.loadtxt(os.path.join(devdir,fun), comments="#", unpack=False,dtype='double')
            med = np.median(data)
            color='green'
            marker='o'
            if "ocml" in fun:
                color='orange'
                marker='x'
            if "builtin" in fun:
                color='cornflowerblue'
                marker='d'
            data = data - reference
            data = abs(data)
            xtmp = x[finite(tmp)]
            data = data[finite(tmp)]
            plt.scatter(xtmp,data, color=color, label=f" {fun}", marker=marker)
        if np.isnan(maxval):
            print(f"Error: Maximal error for {funname} is NaN")
            return
        if np.isinf(maxval):
            print(f"Error: Maximal error for {funname} is inf")
            return
        try:
            plt.ylim([0,max(1.05*maxval,1e-100)])
        except:
            print(f"Error: Overflow for {funname}")
            return 
        plt.legend(loc='upper right')
        plt.xlabel('$x$',fontsize=15)
        plt.ylabel('$|\hat{f}(x)-f(x)|$',fontsize=15)
        if "builtin" in hostfun:
            builtinfound = True
            plt.title(f"{funname} - Built-in Reference",fontsize=20)
            plt.savefig(f"{dir}/{funname}_builtin.png")
        else:
            libcfound = True
            plt.title(f"{funname} - LIBC Reference",fontsize=20)
            plt.savefig(f"{dir}/{funname}_libc.png")
        plt.close()

    if (libcfound):
        readme.write(f"![{funname}]({dir}/{funname}_libc.png)")
    else:
        readme.write(f"No LIBC reference")
    
    if (builtinfound):
        readme.write(f" | ![{funname}]({dir}/{funname}_builtin.png)\n")
    else:
        readme.write(f" | No builin-in reference\n")

def finite(tmp):
    return np.logical_and(~np.isnan(tmp),np.isfinite(tmp))

if __name__ == "__main__":
    main()