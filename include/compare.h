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
    double apply_fun_gpu(const Array<T> & input,Array<T> & output){
        assert(input.length() == output.length());
        const T * inptr = input.devptr();
        T * outptr = output.devptr();
        const int_t length = input.length();
        const int_t device = input.device();
        double_t cmath_time = omp_get_wtime();
        #pragma omp target teams distribute parallel for is_device_ptr(inptr,outptr) device(device)
        for (int_t i = 0; i < length; i++){
            outptr[i] = F(inptr[i]);
        }
        return omp_get_wtime()-cmath_time;
    }

    template<class T,T (*F)(T)>
    double apply_fun_cpu(const Array<T> & input,Array<T> & output){
        assert(input.length() == output.length());
        assert(!input.on_device());
        assert(!output.on_device());
        const T * inptr = input.hostptr();
        T * outptr = output.hostptr();
        const int_t length = input.length();
        double_t cmath_time = omp_get_wtime();
        #pragma omp parallel for
        for (int_t i = 0; i < length; i++){
            outptr[i] = F(inptr[i]);
        }
        return omp_get_wtime()-cmath_time;
    }

    template<class T,T (*F)(T)>
    double_t gpu_time(const Array<T> & input,Array<T> & output,std::string filename, int_t tests=500) {
        std::ofstream result_file("figures/data/"+filename+".txt");
        double_t total_time = 0.0;
        for (int t=0;t<tests;t++){
            const double_t cmath_time = apply_fun_gpu<T,F>(input,output);
            result_file << cmath_time << std::endl;
            total_time += cmath_time;
        }
        return total_time;
    }

    template<class T,T (*F1)(T),T (*F2)(T)>
    void compare_time(Array<T> & input, Array<T> & builtin_out, Array<T> & vendor_out,std::string builtin_file="builtin",std::string vendor_file="vendor"){
        const double_t builtin_time = gpu_time<T,F1>(input,builtin_out,"timings/"+builtin_file);
        std::cout << "Builtin version of " << builtin_file << ": " << builtin_time << std::endl;
        const double_t vendor_time = gpu_time<T,F2>(input,vendor_out,"timings/"+vendor_file);
        std::cout << "Vendor version of " << vendor_file << ": " << vendor_time << std::endl;
    }

    template<class T>
    T cpu_abs_diff(const Array<T> & host_array,Array<T> & dev_array,std::string filename) {
        assert(host_array.length() == dev_array.length());
        assert(!host_array.on_device());
        assert(!dev_array.on_device());
        const T * ref = host_array.hostptr();
        const T * res = dev_array.hostptr();
        std::ofstream result_file("figures/data/"+filename+".txt");
        T max_diff = 0.0;
        for (int i=0;i<host_array.length();i++){
            T tmp = std::abs(ref[i]-res[i]);
            result_file << tmp << std::endl;
            max_diff = std::max(max_diff,tmp);
        }
        return max_diff;
    }

    template<class T,T (*F1)(T),T (*F2)(T)>
    void compare_accuracy(Array<T> & input, Array<T> & host_array, Array<T> & builtin_out, Array<T> & vendor_out,std::string builtin_file="builtin",std::string vendor_file="vendor"){
        if (!input.on_device()) input.to_device();
        if (!builtin_out.on_device()) builtin_out.to_device();
        if (!vendor_out.on_device()) vendor_out.to_device();

        // Applying device functions
        apply_fun_gpu<T,F1>(input,builtin_out);
        apply_fun_gpu<T,F2>(input,vendor_out);

        // Moving results to the CPU
        input.to_host();
        if (host_array.on_device()) host_array.to_device();
        apply_fun_cpu<T,F1>(input,host_array);

        // Computing the difference
        #pragma omp parallel
        #pragma omp single nowait
        {
            #pragma omp task
            {
                builtin_out.to_host();
                T builtin_diff = cpu_abs_diff<T>(host_array,builtin_out,"differences/"+builtin_file);
                std::cout << builtin_file << " max abs diff: " << builtin_diff << std::endl;
            }

            #pragma omp task
            {
                vendor_out.to_host();
                T vendor_diff = cpu_abs_diff<T>(host_array,vendor_out,"differences/"+vendor_file);
                std::cout << vendor_file << " max abs diff: " << vendor_diff << std::endl;
            }
        }

    }
}

#endif