#ifndef _GPU_MATH_RANGE_
#define _GPU_MATH_RANGE_

#include <cmath>
#include "array.h"

namespace gpumath {

    template<class T>
    void uniform_range(Array<T> & arr,T xmin = -M_PI, T xmax = M_PI){
        int_t length = arr.length();
        T step = (xmax-xmin)/(((T) arr.length())-1.0);
        T * devptr = arr.devptr();
        #pragma omp target teams distribute parallel for is_device_ptr(devptr) map(always,to:xmin,step,length)
        for (int_t i = 0; i < length; i++){
            devptr[i] = xmin + i * step;
        }
        std::cout << "Initialized float-" << sizeof(T)*8 << " array " << std::endl;
        if (!arr.on_device()) arr.to_host();
    }

    template<>
    void uniform_range<int_t>(Array<int_t> & arr,int_t xmin, int_t xmax){
        int_t length = arr.length();
        int_t step = 1;
        int_t * devptr = arr.devptr();
        if (xmin < 0) xmin = 0;
        #pragma omp target teams distribute parallel for is_device_ptr(devptr) map(always,to:xmin,step,length)
        for (int_t i = 0; i < length; i++){
            devptr[i] = xmin + i * step;
        }
        std::cout << "Initialized integer array " << std::endl;
        if (!arr.on_device()) arr.to_host();
    }
}

#endif