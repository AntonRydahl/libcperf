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
    p1 = 1000.0*np.loadtxt(f"data/timings/{builtin}.txt", comments="#", delimiter="\n", unpack=False,dtype='double')
except:
    sys.exit(f"data/timings/{builtin}.txt not found")
try:
    p2 = 1000.0*np.loadtxt(f"data//timings/{vendor}.txt", comments="#", delimiter="\n", unpack=False,dtype='double')
except:
    sys.exit(f"data/timings/{vendor}.txt not found")

med_p1 = np.median(p1)
med_p2 = np.median(p2)

bins = np.linspace(min(min(p1),min(p2)), max(max(p1),max(p2)), 100)

plt.hist(p1, bins, color='cornflowerblue', alpha=0.5, label=f" {builtin}")
plt.axvline(x = med_p1, color='cornflowerblue', label=f" median({builtin})={np.round(med_p1,2)}")
plt.hist(p2, bins, color='orange', alpha=0.5, label=f" {vendor}")
plt.axvline(x = med_p2, color='orange', label=f" median({vendor})={np.round(med_p2,2)}")
plt.legend(loc='upper right')
plt.xlabel('Wall Time in MS',fontsize=15)
plt.ylabel('Observations',fontsize=15)
plt.savefig(f"images/timings/{builtin}x{vendor}.png")