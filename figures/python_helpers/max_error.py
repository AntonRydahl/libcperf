import numpy as np 
from math import ulp

def stable_abs(xarr,yarr,epsilon):
    infnanmask = (np.isnan(xarr) & np.isnan(yarr)) | (np.isinf(xarr) & np.isinf(yarr))
    return np.array([ x>= y-epsilon if x<=y else x<= y+epsilon for (x,y) in zip(xarr,yarr)] | infnanmask).all()

def stable_rel(xarr,yarr,epsilon):
    infnanmask = (np.isnan(xarr) & np.isnan(yarr)) | (np.isinf(xarr) & np.isinf(yarr))
    return np.array([ x/abs(y)>= y/abs(y)-epsilon if x<=y else x/abs(y)<= y/abs(y)+epsilon for (x,y) in zip(xarr,yarr)] | infnanmask).all()

def max_error(obj,maxabserr,maxrelerr,maxulp):
    data = {}
    if "host" in obj and "device" in obj:
        for devfun in obj["device"]:
            data[devfun] = {}
            for hostfun in obj["host"]:
                data[devfun][hostfun] = {}
                tmpabs = abs(obj["host"][hostfun]-obj["device"][devfun])
                ULP = [maxulp*ulp(t) for t in obj["host"][hostfun]]
                infnanmask = (np.isnan(obj["host"][hostfun]) & np.isnan(obj["device"][devfun])) | (np.isinf(obj["host"][hostfun]) & np.isinf(obj["device"][devfun]))
                ulpbool = (((obj["device"][devfun] <= obj["host"][hostfun]+ULP) & (obj["device"][devfun] >= obj["host"][hostfun]-ULP)) | infnanmask).all()
                tmprel = abs(tmpabs/(obj["device"][devfun]+1e-6))
                abserr = [t for t in tmpabs if (not np.isinf(t)) and (not np.isnan(t))]
                relerr = [t for t in tmprel if (not np.isinf(t)) and (not np.isnan(t))]
                if len(abserr) == 0:
                    if ((obj["host"][hostfun] == obj["device"][devfun]) | infnanmask).all():
                        abserr = [0.0]
                    else :
                        abserr = tmpabs
                if len(relerr) == 0:
                    if ((obj["host"][hostfun] == obj["device"][devfun]) | infnanmask).all():
                        relerr = [0.0]
                    else :
                        relerr = tmprel
                data[devfun][hostfun]["abserr"] = max(abserr)
                data[devfun][hostfun]["absbool"] = stable_abs(obj["host"][hostfun],obj["device"][devfun],maxabserr)
                data[devfun][hostfun]["relerr"] = max(relerr)
                data[devfun][hostfun]["relbool"] = stable_rel(obj["host"][hostfun],obj["device"][devfun],maxrelerr)
                data[devfun][hostfun]["ulp"] = ulpbool
                data[devfun][hostfun]["nan"] = {}
                data[devfun][hostfun]["nan"]["host"] = len([t for t in obj["host"][hostfun] if np.isnan(t)])
                data[devfun][hostfun]["nan"]["device"] = len([t for t in obj["device"][devfun] if np.isnan(t)])
                data[devfun][hostfun]["inf"] = {}
                data[devfun][hostfun]["inf"]["host"] = len([t for t in obj["host"][hostfun] if np.isinf(t)])
                data[devfun][hostfun]["inf"]["device"] = len([t for t in obj["device"][devfun] if np.isinf(t)])
    return data