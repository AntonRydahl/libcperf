import numpy as np
import sys, getopt
import os
import warnings

def gather_data(filepath):
    data = {}
    with warnings.catch_warnings():
        warnings.simplefilter("ignore")
        for subdir, dirs, files in sorted(os.walk(filepath)):
            fieldarr = [str for str in subdir.replace(filepath,"").split("/") if len(str) > 0]
            if len(fieldarr) < 1:
                continue
            for name in sorted(files):
                if ".png" in name or ".pdf" in name:
                    continue
                if name[-1] == 'f':
                    arr = np.loadtxt(os.path.join(subdir,name), comments="#", unpack=False,dtype='float')
                else:
                    arr = np.loadtxt(os.path.join(subdir,name), comments="#", unpack=False,dtype='double')
                if len(arr) < 1:
                    #print(f"Skipping empty file {os.path.join(subdir,name)}")
                    continue
                if not fieldarr[0] in data:
                    data[fieldarr[0]] = {}
                if len(fieldarr) == 1:
                    data[fieldarr[0]][name] = arr
                elif len(fieldarr) == 2:
                    if not fieldarr[1] in data[fieldarr[0]]:
                        data[fieldarr[0]][fieldarr[1]] = {}
                    data[fieldarr[0]][fieldarr[1]][name] = arr
    return data
            

