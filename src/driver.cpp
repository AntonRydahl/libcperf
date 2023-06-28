#include <iostream>
#include "math.h"
#include "array.h"
#include "range.h"
#include "compare.h"

#define xstr(a) str(a)
#define str(a) #a

#ifndef VENDORFUN
#define VENDORFUN __ocml_sin_f64
#endif

#ifndef BUILTINFUN
#define BUILTINFUN sin
#endif

extern "C" {
  double VENDORFUN(double);
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
