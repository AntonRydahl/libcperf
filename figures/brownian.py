#!/usr/bin/env python3
import numpy as np
import numpy.random as random
import matplotlib.pyplot as plt
import sys, getopt

if (len(sys.argv) != 3):
    print("Please provide the names of the functions! for example")
    print(f"python3 {sys.argv[0]} sin __ocml_sin_f64")
    exit()

builtin = sys.argv[1]
vendor = sys.argv[2]

e1 = 1000.0*np.loadtxt(f"data/differences/{builtin}.txt", comments="#", delimiter="\n", unpack=False)
e2 = 1000.0*np.loadtxt(f"data//differences/{vendor}.txt", comments="#", delimiter="\n", unpack=False)
e1 = e1[~np.isnan(e1)]
e2 = e2[~np.isnan(e2)]

med_p1 = np.median(e1)
med_p2 = np.median(e2)

x = np.linspace(-np.pi,np.pi,len(e1))
x1 = x[~np.isnan(e1)]
x2 = x[~np.isnan(e2)]
e1 = e1[~np.isnan(e1)]
e2 = e2[~np.isnan(e2)]

plt.scatter(x1,e1, color='cornflowerblue', label=f" {builtin}")
plt.ylim([0,max(max(e1),1e-100)])
plt.legend(loc='upper right')
plt.xlabel('$x$',fontsize=15)
plt.ylabel('$|\hat{f}(x)-f(x)|$',fontsize=15)
plt.savefig(f"images/differences/{builtin}.png")

plt.figure()
plt.scatter(x2,e2, color='orange', label=f" {vendor}")
plt.ylim([0,max(max(e2),1e-100)])
plt.legend(loc='upper right')
plt.xlabel('$x$',fontsize=15)
plt.ylabel('$|\hat{f}(x)-f(x)|$',fontsize=15)
plt.savefig(f"images/differences/{vendor}.png")