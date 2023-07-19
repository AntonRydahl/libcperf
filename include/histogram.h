#ifndef _GPU_MATH_HISTOGRAM_
#define _GPU_MATH_HISTOGRAM_

#include <cmath>
#include <iostream>
#include <limits.h>
#include "array.h"

namespace gpumath {
    template <class T, T (*F1)(PTRARGS), T (*F2)(PTRARGS), typename... args>
    T absolute_difference(std::tuple<Array<args>...> &input, Array<T> &devarr,
                            Array<T> &hostarr) {
        if (!std::get<0>(input).on_device())
            std::get<0>(input).to_device();
        if (!devarr.on_device())
            devarr.to_device();
        if (hostarr.on_device())
            hostarr.to_host();
        
        apply_fun_gpu<T, F1, args...>(input, devarr);
        std::get<0>(input).to_host();
        apply_fun_cpu<T, F2, args...>(input, hostarr);
        hostarr.to_device();
        T * refptr = hostarr.devptr();
        T * devptr = devarr.devptr();
        uint_t length = devarr.length();
        T maxval = 0.0;
        #pragma omp target teams distribute parallel for reduction(max:maxval) is_device_ptr(refptr,devptr) map(always,tofrom:maxval)
        for(uint_t i=0;i<length;i++){
            devptr[i] = std::abs(refptr[i]-devptr[i]);
            if (!std::isnan(devptr[i]) && !std::isinf(devptr[i])) maxval = std::max(devptr[i],maxval);
        }
        std::cout << "Maximal error is " << maxval << std::endl;
        return maxval;
    }

    template <class T >
    void make_bins(T * arr, uint_t length, uint_t chunks, uint_t chunksize ,T maxval, std::string filename,int_t nbins = 100) {
        maxval = std::max(maxval,1e-16f);
        Array<T> bins(nbins+1);
        Array<uint_t> counts(nbins);
        Array<uint_t> nans(1);
        Array<uint_t> infs(1);
        bins.to_host();
        counts.to_host();
        nans.to_host();
        infs.to_host();
        #pragma omp parallel for
        for (uint_t i=0;i<nbins+1;i++){
            bins.hostptr()[i] = ((T) i)*maxval/(((T) nbins)-1);
        }
        #pragma omp parallel for
        for (uint_t i=0;i<nbins+1;i++){
            counts.hostptr()[i] = 0;
        }
        uint_t nancounter = 0;
        uint_t infcounter = 0;
        uint_t total = 0;
        for (uint_t j=0;j<chunks;j++){
            uint_t lim = (j==chunks-1) ? length :(j+1)*chunksize;
            #pragma omp target enter data map(always,to:arr[j*chunksize:chunksize])
            for (uint_t i=0;i<nbins;i++){
                T lb = bins.hostptr()[i];
                T ub = bins.hostptr()[i+1];
                if (i==nbins-1){
                    ub += 1e-10;
                }
                uint_t counter = 0;
                #pragma omp target teams distribute parallel for reduction(+:counter) map(always,tofrom:counter)
                for (uint_t k=j*chunksize;k<lim;k++){
                    if (!std::isnan(arr[k]) && !std::isinf(arr[k])){
                        if ((arr[k] >= lb) && (arr[k]<ub)){
                            counter++;
                        }
                    }
                }
                counts.hostptr()[i] += counter;
                total += counter;
            }
            #pragma omp target teams distribute parallel for reduction(+:nancounter,infcounter) map(always,tofrom:nancounter,infcounter)
            for (uint_t k=j*chunksize;k<lim;k++){
                if (std::isnan(arr[k])){
                    nancounter++;
                }
                if (std::isinf(arr[k])){
                    infcounter++;
                }
            }
            #pragma omp target exit data map(delete:arr[j*chunksize:chunksize])
        }
        std::cout << "Total number of elements: " << length << std::endl;
        std::cout << "\tClassified: " << total << std::endl;
        std::cout << "\tisnan(): " <<nancounter << std::endl;
        std::cout << "\tisinf(): "<< infcounter << std::endl;
        std::cout << "\tUnclassified: "<< length-infcounter-nancounter-total << std::endl;
        assert(length == total + nancounter + infcounter);
        nans.hostptr()[0]=nancounter;
        nans.save(filename+"_nans");
        counts.save(filename+"_counts");
        bins.save(filename+"_bins");
        infs.save(filename+"_infs");
    }
}

#endif