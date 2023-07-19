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
    readme = open("error_histograms.md","w")
    readme.write("# Error Histograms\n")
    readme.write("The following plots were obtained by running the different GPU implementations on all 2 to the 32 possible 32-bit floating point values. As it would take an infeasible amount of storage to plot the differences as function of the real axis, histograms displaying the distributions of the absolute errors have been made instead.\n<br>\n")
    for i in range(plots_per_line):
        readme.write("| ")
    readme.write("|\n")
    for i in range(plots_per_line):
        readme.write("|:-----:")
    readme.write("|\n")
    for subdir, dirs, files in os.walk('./results/histograms/'):
        funname = subdir.split('/')[3]
        if (not funname):
            continue
        if prevfun == funname:
            continue
        prevfun = funname
        #try:
        make_error_plot(funname,subdir,readme)
        #for file in files:
        #    print(os.path.join(subdir, file))
        #except:
        #    print(f"Error plotting {funname}")
    readme.close()

def make_error_plot(funname,dir,readme):
    global plot_counter
    global plots_per_line
    print(f"Making error plots for {funname}")
    if not os.path.exists(dir):
        print(f"No such directory: {dir}")
        return
    files = np.unique([f.replace("_bins","").replace("_counts","").replace("_nans","").replace("_infs","") for f in os.listdir(dir) if os.path.isfile(os.path.join(dir, f)) and not (".png" in f)])
    print(files)
    if 0==len(files):
        print(f"Missing files")
        return
    
    maxbinwidth = 0.0
    for filename in files:
        print(filename)
        bins = np.loadtxt(os.path.join(dir,f"{filename}_bins"), comments="#", delimiter="\n", unpack=False,dtype='double')
        maxbinwidth = max(maxbinwidth,bins[1]-bins[0])

    plt.figure()
    for filename in files:
        print(filename)
        bins = np.loadtxt(os.path.join(dir,f"{filename}_bins"), comments="#", delimiter="\n", unpack=False,dtype='double')
        counts = np.loadtxt(os.path.join(dir,f"{filename}_counts"), comments="#", delimiter="\n", unpack=False,dtype='double')
        bins,counts = recount(bins,counts,maxbinwidth)
        nans = np.loadtxt(os.path.join(dir,f"{filename}_nans"), comments="#", delimiter="\n", unpack=False,dtype='double')
        infs = np.loadtxt(os.path.join(dir,f"{filename}_infs"), comments="#", delimiter="\n", unpack=False,dtype='double')
        label = f" {filename}"
        if nans > 0:
            label = label + f" ({np.uint32(nans)} NaNs)"
        if infs > 0:
            label = label + f" ({np.uint32(infs)} infs)"
        if "builtin" in filename:
            plt.stairs(counts,bins,label=label,hatch='//')
        elif "ocml" in filename:
            plt.stairs(counts,bins,label=label,hatch='X')
        else :
            plt.stairs(counts,bins,label=label,fill=True)
    plt.show()
    plt.legend(loc='upper right')
    plt.ylabel('Observations',fontsize=15)
    plt.xlabel('Absolute Error',fontsize=15)
    plt.yscale("log")
    plt.title(f"{funname}",fontsize=20)
    plt.savefig(f"{dir}/{funname}.png")
    plt.close()

    if (plot_counter % plots_per_line) == 0:
        readme.write(f"![{funname}]({dir}/{funname}.png)\n")
    else:
        readme.write(f"![{funname}]({dir}/{funname}.png)|")
    plot_counter = plot_counter + 1

def finite(tmp):
    return np.logical_and(~np.isnan(tmp),np.isfinite(tmp))

def recount(bins,counts,maxbinwidth):
    binwidth = bins[1]-bins[0]
    if binwidth != maxbinwidth:
        _bins = [min(bins)]
        _counts = []
        width = min(bins)
        count = 0
        for i in range(len(counts)):
            if (width + binwidth) > maxbinwidth or i == len(counts)-1:
                _bins.append(width)
                if i == len(counts)-1:
                    count += counts[i]
                _counts.append(count)
                count = counts[i]
            else:
                count += counts[i]
            width += binwidth
        _bins[-1]=bins[-1]
        assert(min(bins) == min(_bins))
        assert(max(bins) == max(_bins))
        assert(sum(_counts) == sum(counts))
        if (_bins[-1]-_bins[0]) < maxbinwidth:
            _bins[-1] = _bins[0]+maxbinwidth
        bins = np.array(_bins)
        counts = np.array(_counts)
    return bins,counts

if __name__ == "__main__":
    main()