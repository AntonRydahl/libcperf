#include <iostream>
#include "array.h"
#include "range.h"
#include "compare.h"

#define xstr(a) str(a)
#define str(a) #a

#ifndef VENDORFUN
#define VENDORFUN __ocml_sinh_f32
#endif

#ifndef BUILTINFUN
#define BUILTINFUN sinhf
#endif

extern "C" {
  gpumath::float_t VENDORFUN(gpumath::float_t);
}

int main(void) {
  gpumath::Array<gpumath::float_t> input;
  gpumath::Array<gpumath::float_t> libcarr;
  gpumath::Array<gpumath::float_t> vendorarr;
  gpumath::uniform_range(input);
  std::string libcname = xstr(BUILTINFUN);
  std::string vendorname = xstr(VENDORFUN);
  gpu_math_compare<gpumath::float_t,BUILTINFUN,VENDORFUN>(input,libcarr,vendorarr,libcname,vendorname);
  return 0;
}
