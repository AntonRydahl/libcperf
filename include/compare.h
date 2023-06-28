#ifndef _GPU_MATH_COMPARE_
#define _GPU_MATH_COMPARE_

#include <omp.h>
#include <cassert>  
#include <iostream>
#include "array.h"
#include <cmath>

namespace gpumath {

    template<typename F>
    double_t foo(F f,double_t x){
        return f(x);
    }
    /*
    template<class T,typename F>
    double_t gpu_time(const Array<T> & input,Array<T> & output,F fun,int_t tests=100) {
        assert(input.length() == output.length());
        const double_t cmath_time = omp_get_wtime();
        const T * inptr = input.devptr();
        T * outptr = output.devptr();
        const int_t length = input.length();
        for (int t=0;t<tests;t++){
            #pragma omp target teams distribute parallel for simd is_device_ptr(inptr,outptr)
            for (int_t i = 0; i < length; i++){
                outptr[i] = cosf(inptr[i]);
            }
        }
        return omp_get_wtime()-cmath_time;
    }

    template<class T,double (*F)(double)>
    double_t gpu_time_2(const Array<T> & input,Array<T> & output,int_t tests=100) {
        assert(input.length() == output.length());
        const double_t cmath_time = omp_get_wtime();
        const T * inptr = input.devptr();
        T * outptr = output.devptr();
        const int_t length = input.length();
        for (int t=0;t<tests;t++){
            #pragma omp target teams distribute parallel for simd is_device_ptr(inptr,outptr)
            for (int_t i = 0; i < length; i++){
                outptr[i] = F(inptr[i]);
            }
        }
        return omp_get_wtime()-cmath_time;
    }*/

    template<class T,T (*F)(T)>
    double_t gpu_time(const Array<T> & input,Array<T> & output,int_t tests=1000) {
        assert(input.length() == output.length());
        const T * inptr = input.devptr();
        T * outptr = output.devptr();
        const int_t length = input.length();
        const int_t device = input.device();
        const double_t cmath_time = omp_get_wtime();
        for (int t=0;t<tests;t++){
            #pragma omp target teams distribute parallel for simd is_device_ptr(inptr,outptr) device(device)
            for (int_t i = 0; i < length; i++){
                outptr[i] = F(inptr[i]);
            }
            std::cout << "\rIteration " << t;
        }
        std::cout << std::endl;
        return omp_get_wtime()-cmath_time;
    }

    template<class T,T (*F1)(T),T (*F2)(T)>
    void gpu_math_compare(Array<T> & input, Array<T> & builtin_out, Array<T> & vendor_out){
        const double_t builtin_time = gpu_time<T,F1>(input,builtin_out);
        std::cout << "Builtin version: " << builtin_time << std::endl;
        const double_t vendor_time = gpu_time<T,F2>(input,vendor_out);
        std::cout << "Vendor version: " << vendor_time << std::endl;
    }
}

#endif