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

#include "array.h"
#include "compare.h"
#include "range.h"
#include <iostream>
#include <tuple>

extern "C" {
RETTYPE FUNCTION(PTRARGS);
}

template <typename... args> void timings(std::string devicename) {
  std::tuple<gpumath::Array<args>...> input;
  gpumath::uniform_range(std::get<0>(input));
#if NARGS > 1
  gpumath::uniform_range(std::get<1>(input));
#endif
#if NARGS > 2
  gpumath::uniform_range(std::get<2>(input));
#endif
  gpumath::Array<RETTYPE> devicearray;
  gpumath::gpu_time<RETTYPE, FUNCTION, args...>(input, devicearray, devicename);
}

template <typename... args> void correctness(std::string devicename) {
  std::tuple<gpumath::Array<args>...> input;
  std::get<0>(input).reshape(2048);
  gpumath::uniform_range(std::get<0>(input));
#if NARGS > 1
  std::get<1>(input).reshape(2048);
  gpumath::uniform_range(std::get<1>(input));
#endif
#if NARGS > 2
  std::get<2>(input).reshape(2048);
  gpumath::uniform_range(std::get<2>(input));
#endif
  gpumath::Array<RETTYPE> devicearray(2048);
  gpumath::save_range_result_gpu<RETTYPE, FUNCTION, args...>(input, devicearray,
                                                             devicename);
}

int main(void) {
  std::string devicename = xstr(FUNCTION);
  timings<ARGS>("figures/results/timings/" + std::string(PREFIXSTR) +
                devicename);
  correctness<ARGS>("figures/results/output/" + std::string(PREFIXSTR) +
                    devicename);
  return 0;
}
