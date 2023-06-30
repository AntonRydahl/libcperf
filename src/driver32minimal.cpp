#include <cmath>
#ifndef VENDORFUN
#define VENDORFUN __ocml_sinh_f32
#endif

#ifndef BUILTINFUN
#define BUILTINFUN sinhf
#endif

extern "C" { float VENDORFUN(float);}

int main(void) {
  float result = -1.0;
  #pragma omp target map(always,from:result)
  {
    float x = BUILTINFUN(0.12345);
    float y = VENDORFUN(0.67891);
    result = x + y;
  }
  return result;
}