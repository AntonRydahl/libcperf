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

try:
    e1 = np.loadtxt(f"data/differences/{builtin}.txt", comments="#", delimiter="\n", unpack=False,dtype='double')
except:
    sys.exit(f"data/differences/{builtin}.txt not found")
try:
    e2 = np.loadtxt(f"data//differences/{vendor}.txt", comments="#", delimiter="\n", unpack=False,dtype='double')
except:
    sys.exit(f"data/differences/{vendor}.txt not found")

x = np.linspace(-np.pi,np.pi,len(e1))
x1 = x[~np.isnan(e1)]
x2 = x[~np.isnan(e2)]
e1 = e1[~np.isnan(e1)]
e2 = e2[~np.isnan(e2)]

plt.scatter(x1,e1, color='cornflowerblue', label=f" {builtin}")
plt.ylim([0,max(1.05*max(e1),1e-100)])
plt.legend(loc='upper right')
plt.xlabel('$x$',fontsize=15)
plt.ylabel('$|\hat{f}(x)-f(x)|$',fontsize=15)
plt.savefig(f"images/differences/{builtin}.png")

plt.figure()
plt.scatter(x2,e2, color='orange', label=f" {vendor}")
plt.ylim([0,max(1.05*max(e2),1e-100)])
plt.legend(loc='upper right')
plt.xlabel('$x$',fontsize=15)
plt.ylabel('$|\hat{f}(x)-f(x)|$',fontsize=15)
plt.savefig(f"images/differences/{vendor}.png")