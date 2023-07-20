#include <iostream>
#include <tuple>

#include "array.h"
#include "compare.h"
#include "definitions.h"
#include "range.h"

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
  gpumath::gpu_time<RETTYPE, GPUFUN, args...>(input, devicearray, devicename);
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
  gpumath::save_range_result_gpu<RETTYPE, GPUFUN, args...>(input, devicearray,
                                                           devicename);
}

int main(void) {
  std::string devicename = xstr(GPUFUN);
  timings<ARGS>("figures/results/timings/" + std::string(PREFIXSTR) +
                devicename);
  correctness<ARGS>("figures/results/output/" + std::string(PREFIXSTR) +
                    devicename);
  return 0;
}
