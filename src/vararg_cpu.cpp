#include <tuple>

/**
 * The definitions header must be included before the remaining non-standard
 * headers
 */

#include "array.h"
#include "compare.h"
#include "definitions.h"
#include "range.h"

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
  gpumath::cpu_time<RETTYPE, wrapperfun, args...>(input, hostarray, hostname);
}

template <typename... args> void correctness(std::string hostname) {
  std::tuple<gpumath::Array<args>...> input;
  std::get<0>(input).reshape(10000);
  gpumath::uniform_range(std::get<0>(input));
#if NARGS > 1
  std::get<1>(input).reshape(10000);
  gpumath::uniform_range(std::get<1>(input));
#endif
#if NARGS > 2
  std::get<2>(input).reshape(10000);
  gpumath::uniform_range(std::get<2>(input));
#endif
  gpumath::Array<RETTYPE> hostarray(10000);
  hostarray.to_host();
  gpumath::save_range_result_cpu<RETTYPE, wrapperfun, args...>(input, hostarray,
                                                               hostname);
}

int main(void) {
  std::string hostname = xstr(CPUFUN);
  //timings<ARGS>("figures/results/timings/" + std::string(PREFIXSTR) + hostname);
  correctness<ARGS>("figures/results/output/" + std::string(PREFIXSTR) +
                    hostname);
  return 0;
}
