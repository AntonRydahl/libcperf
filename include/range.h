#ifndef _GPU_MATH_RANGE_
#define _GPU_MATH_RANGE_

#include "array.h"
#include <bitset>
#include <cmath>
#include <cstring>
#include <limits.h>

namespace gpumath {

template <class T> void uniform_range(Array<T> &arr) {
  T xmin = std::numeric_limits<T>::min();
  T xmax = std::numeric_limits<T>::max();
  int_t length = arr.length();
  T step = (xmax - xmin) / (((T)arr.length()) - 1.0);
  T min_step = std::nextafter(std::numeric_limits<T>::min(),
    std::numeric_limits<T>::min()+1.0)-std::numeric_limits<T>::min();
  if (step < min_step){
    step = min_step;
  }
  T *devptr = arr.devptr();
#pragma omp target teams distribute parallel for is_device_ptr(devptr)         \
    map(always, to : xmin, step, length)
  for (int_t i = 0; i < length; i++) {
    devptr[i] = xmin + i * step;
  }
  std::cout << "Initialized float-" << sizeof(T) * 8 << " array " << std::endl;
}

template <> void uniform_range<int_t>(Array<int_t> &arr) {
  int_t length = arr.length();
  int_t step = 1;
  int_t *devptr = arr.devptr();
  int_t xmin = 0;
#pragma omp target teams distribute parallel for is_device_ptr(devptr)         \
    map(always, to : xmin, step, length)
  for (int_t i = 0; i < length; i++) {
    devptr[i] = xmin + i * step;
  }
  std::cout << "Initialized integer array " << std::endl;
}

template <class T> void bit_range_32(Array<T> &arr, uint_t offset = 0x0) {
  uint_t length = arr.length();
  T *devptr = arr.devptr();
#pragma omp target teams distribute parallel for is_device_ptr(devptr)
  for (uint_t i = 0; i < length; i++) {
    uint_t tmp = (offset + i);
    std::memcpy(&devptr[i], &tmp, sizeof(uint_t));
  }
  std::bitset<8 * sizeof(uint_t)> from(offset);
  std::bitset<8 * sizeof(uint_t)> to(offset + (length - 1));
  std::cout << "Initialized float array from " << from << " to " << to
            << std::endl;
}

template <> void uniform_range<int_t *>(Array<int_t *> &arr) {
  std::cout << "Initialized integer pointer array " << std::endl;
}

template <> void uniform_range<double_t *>(Array<double_t *> &arr) {
  std::cout << "Initialized float-64 pointer array " << std::endl;
}

template <> void uniform_range<float_t *>(Array<float_t *> &arr) {
  std::cout << "Initialized float-32 pointer array " << std::endl;
}
} // namespace gpumath

#endif