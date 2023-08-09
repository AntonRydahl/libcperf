#include <iostream>
#include <tuple>

#include "array.h"
#include "compare.h"
#include "definitions.h"
#include "range.h"

int main(void) {
  gpumath::Array<RETTYPE> array(100);
  gpumath::uniform_range(array);
  array.to_host();
  for (gpumath::int_t i = 0; i < array.length(); i++){
    std::cout << array.hostptr()[i] << std::endl; 
  }
  return 0;
}
