#include <iostream>
#include <tuple>

#include "array.h"
#include "compare.h"
#include "definitions.h"
#include "range.h"

template <typename... args> void mpfr(std::string devicename) {
  std::tuple<gpumath::Array<args>...> host_input;
  std::tuple<gpumath::Array<args>...> dev_input;
  std::get<0>(host_input).reshape(10000);
  std::get<0>(dev_input).reshape(10000);
  gpumath::uniform_range(std::get<0>(host_input));
  gpumath::uniform_range(std::get<0>(dev_input));
#if NARGS > 1
  std::get<1>(host_input).reshape(10000);
  gpumath::uniform_range(std::get<1>(host_input));
  std::get<1>(dev_input).reshape(10000);
  gpumath::uniform_range(std::get<1>(dev_input));
#endif
#if NARGS > 2
  std::get<2>(host_input).reshape(10000);
  gpumath::uniform_range(std::get<2>(host_input));
  std::get<2>(dev_input).reshape(10000);
  gpumath::uniform_range(std::get<2>(dev_input));
#endif
  gpumath::Array<RETTYPE> devicearray(10000);
  gpumath::save_range_mpfr<RETTYPE, GPUFUN, args...>(host_input,dev_input, devicearray,
                                                           devicename);
}

int main(void) {
  std::string devicename = xstr(GPUFUN);
  mpfr<ARGS>("figures/mpfr/output/" + std::string(PREFIXSTR) +
                    devicename);
  return 0;
}
