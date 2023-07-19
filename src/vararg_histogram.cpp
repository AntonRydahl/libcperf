#ifndef FUNCTION
#define FUNCTION __ocml_copysign_f64
#endif

#ifndef PREFIX
#define PREFIXSTR ""
#else
#define PREFIXSTR xstr(PREFIX)
#endif

#ifndef NARGS
#define NARGS 2
#endif

#ifndef ARGS
#define ARGS double, double
#endif

#ifndef RETTYPE
#define RETTYPE double
#endif

#define xstr(a) strmacro(a)
#define strmacro(a) #a

#ifndef PTRARGS
#define PTRARGS ARGS
#endif

#include <iostream>
#include <fstream>
#include <tuple>
#include <limits.h>
#include "array.h"
#include "compare.h"
#include "range.h"
#include "histogram.h"

extern "C" {
RETTYPE FUNCTION(PTRARGS);
}

inline RETTYPE wrapperfun(WRAPPERARGS){
  return CPUFUN(WRAPPERNAMES);
}

template <typename... args> void make_hist(std::string filename) {
    RETTYPE * fullarr = (RETTYPE *) malloc(((size_t) UINT_MAX )*((size_t) sizeof(RETTYPE))); 
    const gpumath::uint_t chunks = 4;
    const gpumath::uint_t chunksize = (UINT_MAX/chunks)+1;
    RETTYPE maxval = 0;
    // Scope to clear GPU memory
    {
        std::tuple<gpumath::Array<args>...> input;
        std::get<0>(input).reshape(chunksize);
        gpumath::Array<RETTYPE> hostarray(chunksize);
        gpumath::Array<RETTYPE> devicearray(chunksize);
        for (gpumath::uint_t i = 0;i<chunks;i++){
            gpumath::bit_range_32(std::get<0>(input),i*(chunksize));
            RETTYPE tmpmax = gpumath::absolute_difference<RETTYPE, FUNCTION,wrapperfun,args...>(input,devicearray,
                hostarray);
            maxval = std::max(maxval,tmpmax);
            devicearray.to_host();
            RETTYPE * hostptr = devicearray.hostptr();
            #pragma omp parallel for schedule(static)
            for (gpumath::uint_t j=0;j<(chunksize);j++){
                fullarr[i*(chunksize)+j] = hostptr[j];
            }
        }
    }
    gpumath::make_bins(fullarr, UINT_MAX,chunks,chunksize ,maxval,filename);
    free(fullarr);
}

int main(void) {
  std::string devicename = xstr(FUNCTION);
  make_hist<ARGS>("figures/results/histograms/" + std::string(PREFIXSTR) +
                    devicename);
  return 0;
}
