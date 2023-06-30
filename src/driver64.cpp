#include <iostream>
#include "array.h"
#include "range.h"
#include "compare.h"

#define xstr(a) str(a)
#define str(a) #a

#ifndef VENDORFUN
#define VENDORFUN __ocml_sinh_f64
#endif

#ifndef BUILTINFUN
#define BUILTINFUN sinh
#endif

extern "C" {
  gpumath::double_t VENDORFUN(gpumath::double_t);
}

int main(void) {
  std::string libcname = xstr(BUILTINFUN);
  std::string vendorname = xstr(VENDORFUN);
  // Running timings for very large input size
  {
    gpumath::Array<gpumath::double_t> input;
    gpumath::Array<gpumath::double_t> libcarr;
    gpumath::Array<gpumath::double_t> vendorarr;
    gpumath::uniform_range(input);
    gpumath::compare_time<gpumath::double_t,BUILTINFUN,VENDORFUN>(input,libcarr,vendorarr,libcname,vendorname);
  }
  // Comparing results for smaller input size
  {
    gpumath::Array<gpumath::double_t> input(2048);
    gpumath::Array<gpumath::double_t> hostarr(2048);
    hostarr.to_host();
    gpumath::Array<gpumath::double_t> libcarr(2048);
    gpumath::Array<gpumath::double_t> vendorarr(2048);
    gpumath::uniform_range(input);
    hostarr.to_host();
    gpumath::compare_accuracy<gpumath::double_t,BUILTINFUN,VENDORFUN>(input,hostarr,libcarr,vendorarr,libcname,vendorname);
  }
  return 0;
}
