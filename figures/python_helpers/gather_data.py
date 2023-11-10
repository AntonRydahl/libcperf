import numpy as np
import sys, getopt
import os
import warnings

def gather_data(filepath,is_mpfr=False):
    data = {}
    with warnings.catch_warnings():
        warnings.simplefilter("ignore")
        for subdir, dirs, files in sorted(os.walk(filepath)):
            split_strings = subdir.replace(filepath,"").split("/")
            fieldarr = [str for str in split_strings if len(str) > 0]
            if len(fieldarr) < 1:
                continue
            for name in sorted(files):
                if ".png" in name or ".pdf" in name:
                    continue
                if name.replace("_mpfr","").replace("_gpu","")[-1] == 'f':
                    arr = np.loadtxt(os.path.join(subdir,name), comments="#", unpack=False,dtype='float')
                else:
                    arr = np.loadtxt(os.path.join(subdir,name), comments="#", unpack=False,dtype='double')
                basename = fieldarr[0]
                hostdev = ""
                if is_mpfr:
                    if "_gpu" in name:
                        name = name.replace("_gpu","")
                        hostdev = "device"
                    elif "_mpfr" in name:
                        name = name.replace("_mpfr","")
                        hostdev = "host"
                else:
                    hostdev = fieldarr[1]
                if len(arr) < 1:
                    #print(f"Skipping empty file {os.path.join(subdir,name)}")
                    continue
                if not basename in data:
                    data[basename] = {}
                if not hostdev in data[basename]:
                    data[basename][hostdev] = {}
                data[basename][hostdev][name] = arr
    return data

def merge_data(output,mpfr_output):    
    for funname in output:
        if not funname in mpfr_output:
            mpfr_output[funname] = {}
    
    for funname in output:
        for hostdev in output[funname]:
            if not hostdev in mpfr_output[funname]:
                mpfr_output[funname][hostdev] = {}
    
    for funname in output:
        for hostdev in output[funname]:
            for version in output[funname][hostdev]:
                if not version in mpfr_output[funname][hostdev]:
                    mpfr_output[funname][hostdev][version] = output[funname][hostdev][version].copy()
    return mpfr_output
