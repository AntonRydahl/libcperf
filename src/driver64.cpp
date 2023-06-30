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
  gpumath::Array<gpumath::double_t> input;
  gpumath::Array<gpumath::double_t> libcarr;
  gpumath::Array<gpumath::double_t> vendorarr;
  gpumath::uniform_range(input);
  std::string libcname = xstr(BUILTINFUN);
  std::string vendorname = xstr(VENDORFUN);
  gpu_math_compare<gpumath::double_t,BUILTINFUN,VENDORFUN>(input,libcarr,vendorarr,libcname,vendorname);
  return 0;
}
