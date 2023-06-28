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

p1 = np.loadtxt(f"data/{builtin}.txt", comments="#", delimiter="\n", unpack=False)
p2 = np.loadtxt(f"data/{vendor}.txt", comments="#", delimiter="\n", unpack=False)

bins = np.linspace(min(min(p1),min(p2)), max(max(p1),max(p2)), 100)

plt.hist(p1, bins, alpha=0.5, label=f" {builtin}")
plt.hist(p2, bins, alpha=0.5, label=f" {vendor}")
plt.legend(loc='upper right')
plt.savefig(f"images/{builtin}x{vendor}.png")