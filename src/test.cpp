#include <iostream>
#include "math.h"
#include "array.h"
#include "range.h"
#include "compare.h"

namespace somename {
  gpumath::double_t add1(gpumath::double_t x) {return x+1.0;};
}

template<class T, typename F>
T foo(T x,F f){
  return f(x);
}

int main(void) {
  gpumath::Array<gpumath::double_t> input;
  gpumath::Array<gpumath::double_t> libcarr;
  gpumath::Array<gpumath::double_t> vendorarr;
  gpumath::uniform_range(input);
  gpu_math_compare<gpumath::double_t,cos,
  [](gpumath::double_t in){gpumath::double_t res = 0.0;
    for (gpumath::int_t i=0;i<20;i++) res =+ 0.1*cos(in+res);
    return res;
  }>(input,libcarr,vendorarr);
  return 0;
}
