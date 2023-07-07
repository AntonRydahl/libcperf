#ifndef _GPU_MATH_COMPARE_
#define _GPU_MATH_COMPARE_

#include <omp.h>
#include <cassert>  
#include <iostream>
#include <fstream>
#include "array.h"
#include <cmath>
#include <tuple>

namespace gpumath {

template <class T, T (*F)(ARGS), typename... args>
double apply_fun_gpu(std::tuple<Array<args>...> &input, Array<T> &output) {
  assert(std::get<0>(input).length() == output.length());
  const int_t length = output.length();
  const int_t device = output.device();
  T *outptr = output.devptr();
  const auto *inptr1 = std::get<0>(input).devptr();
  double_t cmath_time = omp_get_wtime();
#if NARGS == 1
#pragma omp target teams distribute parallel for is_device_ptr(outptr, inptr1) \
    device(device)
  for (int_t i = 0; i < length; i++)
    outptr[i] = F(inptr1[i]);
#else
  const auto *inptr2 = std::get<1>(input).devptr();
#if NARGS == 2
#pragma omp target teams distribute parallel for is_device_ptr(                \
        outptr, inptr1, inptr2) device(device)
  for (int_t i = 0; i < length; i++)
    outptr[i] = F(inptr1[i], inptr2[i]);
#else
  const auto *inptr3 = std::get<2>(input).devptr();
#pragma omp target teams distribute parallel for is_device_ptr(                \
        outptr, inptr1, inptr2, inptr3) device(device)
  for (int_t i = 0; i < length; i++)
    outptr[i] = F(inptr1[i], inptr2[i], inptr3[i]);
#endif
#endif
  return omp_get_wtime() - cmath_time;
}

template <class T, T (*F)(ARGS), typename... args>
double apply_fun_cpu(std::tuple<Array<args>...> &input, Array<T> &output) {
  assert(std::get<0>(input).length() == output.length());
  assert(!output.on_device());
  assert(!std::get<0>(input).on_device());
  const int_t length = output.length();
  T *outptr = output.hostptr();
  const auto *inptr1 = std::get<0>(input).hostptr();
  double_t cmath_time = omp_get_wtime();
#if NARGS == 1
#pragma omp parallel for
  for (int_t i = 0; i < length; i++)
    outptr[i] = F(inptr1[i]);
#else
  const auto *inptr2 = std::get<1>(input).hostptr();
  assert(!std::get<1>(input).on_device());
#if NARGS == 2
#pragma omp parallel for
  for (int_t i = 0; i < length; i++)
    outptr[i] = F(inptr1[i], inptr2[i]);
#else
  assert(!std::get<2>(input).on_device());
  const auto *inptr3 = std::get<2>(input).hostptr();
#pragma omp parallel for
  for (int_t i = 0; i < length; i++)
    outptr[i] = F(inptr1[i], inptr2[i], inptr3[i]);
#endif
#endif
  return omp_get_wtime() - cmath_time;
}

template <class T, T (*F)(ARGS), typename... args>
void gpu_time(std::tuple<Array<args>...> &input, Array<T> &output,
              std::string filename, int_t tests = 500) {
  assert(output.on_device());
  std::ofstream result_file(filename);
  double_t total_time = 0.0;
  for (int t = 0; t < tests; t++) {
    const double_t cmath_time = apply_fun_gpu<T, F>(input, output);
    result_file << 1000.0 * cmath_time << std::endl;
    total_time += cmath_time;
    std::cout << "\r\tFinished iteration " << t + 1 << " of " << tests;
  }
  std::cout << "\rGPU function took " << (100.0 * total_time) / ((double)tests)
            << " ms on average " << std::endl;
  std::cout << "Timings written to: " << filename << std::endl;
}

template <class T, T (*F)(ARGS), typename... args>
void cpu_time(std::tuple<Array<args>...> &input, Array<T> &output,
              std::string filename, int_t tests = 100) {
  assert(!output.on_device());
  if (std::get<0>(input).on_device())
    std::get<0>(input).to_host();
#if NARGS > 1
  if (std::get<1>(input).on_device())
    std::get<1>(input).to_host();
#endif
#if NARGS > 2
  if (std::get<2>(input).on_device())
    std::get<2>(input).to_host();
#endif
  std::ofstream result_file(filename);
  double_t total_time = 0.0;
  for (int t = 0; t < tests; t++) {
    const double_t cmath_time = apply_fun_cpu<T, F>(input, output);
    result_file << 1000.0 * cmath_time << std::endl;
    total_time += cmath_time;
    std::cout << "\r\tFinished iteration " << t + 1 << " of " << tests;
  }
  std::cout << "\rCPU function took " << (100.0 * total_time) / ((double)tests)
            << " ms on average " << std::endl;
  std::cout << "Timings written to: " << filename << std::endl;
}

template <class T, T (*F)(ARGS), typename... args>
void save_range_result_gpu(std::tuple<Array<args>...> &input, Array<T> &output,
                           std::string filename) {
  if (!std::get<0>(input).on_device())
    std::get<0>(input).to_device();
#if NARGS > 1
  if (!std::get<1>(input).on_device())
    std::get<1>(input).to_device();
#endif
#if NARGS > 2
  if (!std::get<2>(input).on_device())
    std::get<2>(input).to_device();
#endif
  if (!output.on_device())
    output.to_device();
  apply_fun_gpu<T, F, args...>(input, output);
  output.save(filename);
  std::cout << "Results written to: " << filename << std::endl;
}

template <class T, T (*F)(ARGS), typename... args>
void save_range_result_cpu(std::tuple<Array<args>...> &input, Array<T> &output,
                           std::string filename) {
  if (std::get<0>(input).on_device())
    std::get<0>(input).to_host();
#if NARGS > 1
  if (std::get<1>(input).on_device())
    std::get<1>(input).to_host();
#endif
#if NARGS > 2
  if (std::get<2>(input).on_device())
    std::get<2>(input).to_host();
#endif
  if (output.on_device())
    output.to_host();
  apply_fun_cpu<T, F, args...>(input, output);
  output.save(filename);
  std::cout << "Results written to: " << filename << std::endl;
}
}

#endif