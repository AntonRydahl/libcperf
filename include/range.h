#ifndef _GPU_MATH_RANGE_
#define _GPU_MATH_RANGE_

#include "array.h"

namespace gpumath {

    template<class T>
    void uniform_range(Array<T> & arr,T xmin = -1.0, T xmax = 1.0){
        int_t length = arr.length();
        T step = (xmax-xmin)/(((T) arr.length())-1.0);
        T * devptr = arr.devptr();
        #pragma omp target teams distribute parallel for is_device_ptr(devptr) map(always,to:xmin,step,length)
        for (int_t i = 0; i < length; i++){
            devptr[i] = xmin + i * step;
        }
        if (!arr.on_device()) arr.to_host();
    }
}

#endif