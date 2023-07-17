#ifndef FUNCTION
#define FUNCTION copysign
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

// inline double mysin(double x){
//   return __builtin_sin(x);
// }

template <typename... args> void timings(std::string hostname) {
  std::tuple<gpumath::Array<args>...> input;
  gpumath::uniform_range(std::get<0>(input));
#if NARGS > 1
  gpumath::uniform_range(std::get<1>(input));
#endif
#if NARGS > 2
  gpumath::uniform_range(std::get<2>(input));
#endif
  gpumath::Array<RETTYPE> hostarray;
  hostarray.to_host();
  gpumath::cpu_time<RETTYPE, FUNCTION, args...>(input, hostarray, hostname);
}

template <typename... args> void correctness(std::string hostname) {
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
  gpumath::Array<RETTYPE> hostarray(2048);
  hostarray.to_host();
  gpumath::save_range_result_cpu<RETTYPE, FUNCTION, args...>(input, hostarray,
                                                             hostname);
}

int main(void) {
  std::string hostname = xstr(FUNCTION);
  timings<ARGS>("figures/results/timings/" + std::string(PREFIXSTR) + hostname);
  correctness<ARGS>("figures/results/output/" + std::string(PREFIXSTR) +
                    hostname);
  return 0;
}
