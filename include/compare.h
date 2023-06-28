#ifndef _GPU_MATH_COMPARE_
#define _GPU_MATH_COMPARE_

#include <omp.h>
#include <cassert>  
#include <iostream>
#include <fstream>
#include "array.h"
#include <cmath>

namespace gpumath {

    template<class T,T (*F)(T)>
    double_t gpu_time(const Array<T> & input,Array<T> & output,std::string filename, int_t tests=500) {
        std::ofstream result_file("figures/data/"+filename+".txt");
        assert(input.length() == output.length());
        const T * inptr = input.devptr();
        T * outptr = output.devptr();
        const int_t length = input.length();
        const int_t device = input.device();
        double_t total_time = 0.0;
        for (int t=0;t<tests;t++){
            double_t cmath_time = omp_get_wtime();
            #pragma omp target teams distribute parallel for is_device_ptr(inptr,outptr) device(device)
            for (int_t i = 0; i < length; i++){
                outptr[i] = F(inptr[i]);
            }
            cmath_time = omp_get_wtime()-cmath_time;
            result_file << cmath_time << std::endl;
            total_time += cmath_time;
        }
        return total_time;
    }

    template<class T,T (*F1)(T),T (*F2)(T)>
    void gpu_math_compare(Array<T> & input, Array<T> & builtin_out, Array<T> & vendor_out,std::string builtin_file="builtin",std::string vendor_file="vendor"){
        const double_t builtin_time = gpu_time<T,F1>(input,builtin_out,builtin_file);
        std::cout << "Builtin version: " << builtin_time << std::endl;
        const double_t vendor_time = gpu_time<T,F2>(input,vendor_out,vendor_file);
        std::cout << "Vendor version: " << vendor_time << std::endl;
    }
}

#endif