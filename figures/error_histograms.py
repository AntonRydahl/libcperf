#!/usr/bin/env python3
import numpy as np
import numpy.random as random
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import sys, getopt
import os

plots_per_line = 3
plot_counter = 1

def main():
    global plot_counter
    for arch in ["gfx90a","gfx906","sm_70","sm_80"]:
        plot_counter=1
        print(f"arch is {arch}")
        prevfun = ""
        readme = open(f"error_histograms_{arch}.md","w")
        readme.write(f"# Error Histograms for {arch}\n")
        readme.write("The following plots were obtained by running the different GPU implementations on all 2 to the 32 possible 32-bit floating point values. As it would take an infeasible amount of storage to plot the differences as function of the real axis, histograms displaying the distributions of the absolute errors have been made instead.\n<br>\n")
        for i in range(plots_per_line):
            readme.write("| ")
        readme.write("|\n")
        for i in range(plots_per_line):
            readme.write("|:-----:")
        readme.write("|\n")
        for subdir, dirs, files in sorted(os.walk(f'./results/histograms/{arch}/')):
            funname = subdir.split('/')[4]
            if '.png' in funname or '.pdf' in funname:
                continue
            if (not funname):
                continue
            if prevfun == funname:
                continue
            prevfun = funname
            #try:
            make_error_plot(funname,subdir,readme,arch)
            #for file in files:
            #    print(os.path.join(subdir, file))
            #except:
            #    print(f"Error plotting {funname}")
        readme.close()

def make_error_plot(funname,dir,readme,gpu):
    global plot_counter
    global plots_per_line
    print(f"Making error plots for {funname}")
    if not os.path.exists(dir):
        print(f"No such directory: {dir}")
        return
    files = np.unique([f.replace("_bins","").replace("_counts","").replace("_nans","").replace("_infs","") for f in os.listdir(dir) if os.path.isfile(os.path.join(dir, f)) and not (".png" in f) and not (".pdf" in f)])
    print(files)
    if 0==len(files):
        print(f"Missing files")
        return
    
    maxbinwidth = 0.0
    for filename in files:
        print(filename)
        bins = np.loadtxt(os.path.join(dir,f"{filename}_bins"), comments="#", unpack=False,dtype='double')
        maxbinwidth = max(maxbinwidth,bins[1]-bins[0])

    plt.figure(figsize=(10, 5))
    for filename in files:
        print(filename)
        bins = np.loadtxt(os.path.join(dir,f"{filename}_bins"), comments="#", unpack=False,dtype='double')
        counts = np.loadtxt(os.path.join(dir,f"{filename}_counts"), comments="#", unpack=False,dtype='double')
        bins,counts = recount(bins,counts,maxbinwidth)
        nans = np.loadtxt(os.path.join(dir,f"{filename}_nans"), comments="#", unpack=False,dtype='double')
        infs = np.loadtxt(os.path.join(dir,f"{filename}_infs"), comments="#", unpack=False,dtype='double')
        label = f" {filename}"
        if nans > 0:
            label = label + f" ({np.uint32(nans)} NaNs)"
        if infs > 0:
            label = label + f" ({np.uint32(infs)} infs)"
        if "builtin" in filename:
            plt.stairs(counts,bins,label=label,hatch='//',color='cornflowerblue')
        elif "ocml" in filename:
            plt.stairs(counts,bins,label=label,hatch='X',color='orange')
        elif "nv" in filename:
            plt.stairs(counts,bins,label=label,hatch='\\',color='purple')
        else :
            plt.stairs(counts,bins,label=label,fill=True,color='green')
    plt.show()
    plt.legend(loc='upper right')
    plt.ylabel('Observations',fontsize=18)
    plt.xlabel('Absolute Error',fontsize=18)
    plt.yscale("log")
    plt.legend(loc='center left', bbox_to_anchor=(1, 0.5),fontsize=18)
    plt.rc('font', **{'size':'18'})
    plt.tick_params(axis='both', which='major', labelsize=18, width=2.5, length=10)
    plt.title(f"Absolute Error Histogram for {funname} on {gpu}",fontsize=24)
    plt.savefig(f"{dir}/{gpu}_{funname}.png",bbox_inches = 'tight')
    plt.savefig(f"{dir}/{gpu}_{funname}.pdf",bbox_inches = 'tight')
    plt.close()

    if (plot_counter % plots_per_line) == 0:
        readme.write(f"![{funname}]({dir}/{gpu}_{funname}.png)\n")
    else:
        readme.write(f"![{funname}]({dir}/{gpu}_{funname}.png)|")
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