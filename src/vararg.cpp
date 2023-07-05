#ifndef VENDORFUN
#define VENDORFUN __ocml_copysign_f64
#endif

#ifndef BUILTINFUN
#define BUILTINFUN copysign
#endif

#ifndef NARGS
#define NARGS 2
#endif

#ifndef ARGS
#define ARGS double,double
#endif

#ifndef RETTYPE
#define RETTYPE double
#endif

#define xstr(a) str(a)
#define str(a) #a

#include <iostream>
#include "array.h"
#include "range.h"
#include "compare.h"
#include <tuple>

extern "C" {
  RETTYPE VENDORFUN(ARGS);
}

template<typename ... args>
void timings(std::string libcname,std::string vendorname){
  std::tuple<gpumath::Array<args>...> input;
  gpumath::uniform_range(std::get<0>(input));
#if NARGS > 1
  gpumath::uniform_range(std::get<1>(input));
#endif
#if NARGS > 2
  gpumath::uniform_range(std::get<2>(input));
#endif
  gpumath::Array<RETTYPE> libcarr;
  gpumath::Array<RETTYPE> vendorarr;
  gpumath::compare_time<RETTYPE, BUILTINFUN, VENDORFUN, args...>(
      input, libcarr, vendorarr, libcname, vendorname);
}

template <typename... args>
void correctness(std::string libcname, std::string vendorname) {
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
  gpumath::Array<RETTYPE> hostarr(2048);
  gpumath::Array<RETTYPE> libcarr(2048);
  gpumath::Array<RETTYPE> vendorarr(2048);
  hostarr.to_host();
  gpumath::compare_accuracy<RETTYPE, BUILTINFUN, VENDORFUN, args...>(
      input, hostarr, libcarr, vendorarr, libcname, vendorname);
}

int main(void) {
  std::string libcname = xstr(BUILTINFUN);
  std::string vendorname = xstr(VENDORFUN);
  timings<ARGS>(libcname,vendorname);
  correctness<ARGS>(libcname, vendorname);
  return 0;
}
