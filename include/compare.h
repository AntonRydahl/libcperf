#ifndef _GPU_MATH_COMPARE_
#define _GPU_MATH_COMPARE_

#include "array.h"
#include <cassert>
#include <fstream>
#include <iostream>
#include <omp.h>
#include <tuple>

/**
 * The combination of the following macros are an unelegant solution to handle
 * that the arguments of some of the C standard library math functions are
 * inputs while some are outputs (the ones which are pointers).
 */

#ifdef ARG1POINTER
#define call1(arg) &arg
#else
#define call1(arg) arg
#endif

#ifdef ARG2POINTER
#define call2(arg) &arg
#else
#define call2(arg) arg
#endif

#ifdef ARG3POINTER
#define call3(arg) &arg
#else
#define call3(arg) arg
#endif

#define FUNCALL1(fun, arg1) fun(call1(arg1))
#define FUNCALL2(fun, arg1, arg2) fun(call1(arg1), call2(arg2))
#define FUNCALL3(fun, arg1, arg2, arg3)                                        \
  fun(call1(arg1), call2(arg2), call3(arg3))

namespace gpumath {

/**
 * The following function template applies a function to the tuple of input
 * arrays of various types on the device. The solution is not elegant, but I
 * faced issues with making lambda functions for the variadic function template
 * arguments.
 */

template <class T, T (*F)(PTRARGS), typename... args>
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
    outptr[i] = FUNCALL1(F, inptr1[i]);
#else
  auto *inptr2 = std::get<1>(input).devptr();
#if NARGS == 2
#pragma omp target teams distribute parallel for is_device_ptr(                \
        outptr, inptr1, inptr2) device(device)
  for (int_t i = 0; i < length; i++)
    outptr[i] = FUNCALL2(F, inptr1[i], inptr2[i]);
#else
  auto *inptr3 = std::get<2>(input).devptr();
#pragma omp target teams distribute parallel for is_device_ptr(                \
        outptr, inptr1, inptr2, inptr3) device(device)
  for (int_t i = 0; i < length; i++)
    outptr[i] = FUNCALL3(F, inptr1[i], inptr2[i], inptr3[i]);
#endif
#endif
  return omp_get_wtime() - cmath_time;
}

/**
 * The following function is an equivalent of the above for the case where the
 * return type of the math function is void.
 */

template <void (*F)(PTRARGS), typename... args>
double apply_fun_gpu(std::tuple<Array<args>...> &input) {
  const int_t length = std::get<0>(input).length();
  const int_t device = std::get<0>(input).device();
  const auto *inptr1 = std::get<0>(input).devptr();
  double_t cmath_time = omp_get_wtime();
#if NARGS == 1
#pragma omp target teams distribute parallel for is_device_ptr(inptr1)         \
    device(device)
  for (int_t i = 0; i < length; i++)
    FUNCALL1(F, inptr1[i]);
#else
  auto *inptr2 = std::get<1>(input).devptr();
#if NARGS == 2
#pragma omp target teams distribute parallel for is_device_ptr(inptr1, inptr2) \
    device(device)
  for (int_t i = 0; i < length; i++)
    FUNCALL2(F, inptr1[i], inptr2[i]);
#else
  auto *inptr3 = std::get<2>(input).devptr();
#pragma omp target teams distribute parallel for is_device_ptr(                \
        inptr1, inptr2, inptr3) device(device)
  for (int_t i = 0; i < length; i++)
    FUNCALL3(F, inptr1[i], inptr2[i], inptr3[i]);
#endif
#endif
  return omp_get_wtime() - cmath_time;
}

/**
 * The two following function templates are eqivalents of the two above
 * functions. Thay apply a function to an input range on the host. The first is
 * for non-void return types and the latter is for void return types.
 */

template <class T, T (*F)(PTRARGS), typename... args>
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
    outptr[i] = FUNCALL1(F, inptr1[i]);
#else
  auto *inptr2 = std::get<1>(input).hostptr();
  assert(!std::get<1>(input).on_device());
#if NARGS == 2
#pragma omp parallel for
  for (int_t i = 0; i < length; i++)
    outptr[i] = FUNCALL2(F, inptr1[i], inptr2[i]);
#else
  assert(!std::get<2>(input).on_device());
  auto *inptr3 = std::get<2>(input).hostptr();
#pragma omp parallel for
  for (int_t i = 0; i < length; i++)
    outptr[i] = FUNCALL3(F, inptr1[i], inptr2[i], inptr3[i]);
#endif
#endif
  return omp_get_wtime() - cmath_time;
}

template <void (*F)(PTRARGS), typename... args>
double apply_fun_cpu(std::tuple<Array<args>...> &input) {
  assert(!std::get<0>(input).on_device());
  const int_t length = std::get<0>(input).length();
  auto *inptr1 = std::get<0>(input).hostptr();
  double_t cmath_time = omp_get_wtime();
#if NARGS == 1
#pragma omp parallel for
  for (int_t i = 0; i < length; i++)
    FUNCALL1(F, inptr1[i]);
#else
  auto *inptr2 = std::get<1>(input).hostptr();
  assert(!std::get<1>(input).on_device());
#if NARGS == 2
#pragma omp parallel for
  for (int_t i = 0; i < length; i++)
    FUNCALL2(F, inptr1[i], inptr2[i]);
#else
  assert(!std::get<2>(input).on_device());
  auto *inptr3 = std::get<2>(input).hostptr();
#pragma omp parallel for
  for (int_t i = 0; i < length; i++)
    FUNCALL3(F, inptr1[i], inptr2[i], inptr3[i]);
#endif
#endif
  return omp_get_wtime() - cmath_time;
}

/**
 * The following function applies a function to an input range on the GPU, times
 * the function, and writes the timings to a file.
 */

template <class T, T (*F)(PTRARGS), typename... args>
void gpu_time(std::tuple<Array<args>...> &input, Array<T> &output,
              std::string filename, int_t tests = 1000) {
  assert(output.on_device());
  std::ofstream result_file(filename);
  double_t total_time = 0.0;
  for (int t = 0; t < tests; t++) {
#ifdef VOIDRETTYPE
    const double_t cmath_time = apply_fun_gpu<F, args...>(input);
#else
    const double_t cmath_time = apply_fun_gpu<T, F, args...>(input, output);
#endif
    result_file << 1000.0 * cmath_time << std::endl;
    total_time += cmath_time;
    std::cout << "\r\tFinished iteration " << t + 1 << " of " << tests;
  }
  std::cout << "\rGPU function took " << (1000.0 * total_time) / ((double)tests)
            << " ms on average " << std::endl;
  std::cout << "Timings written to: " << filename << std::endl;
}

/**
 * The following function applies a function to an input range on the host,
 * times the function, and writes the timings to a file.
 */

template <class T, T (*F)(PTRARGS), typename... args>
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
#ifdef VOIDRETTYPE
    const double_t cmath_time = apply_fun_cpu<F>(input);
#else
    const double_t cmath_time = apply_fun_cpu<T, F>(input, output);
#endif
    // Conversion from seconds to miliseconds
    result_file << 1000.0 * cmath_time << std::endl;
    total_time += cmath_time;
    std::cout << "\r\tFinished iteration " << t + 1 << " of " << tests;
  }
  std::cout << "\rCPU function took " << (1000.0 * total_time) / ((double)tests)
            << " ms on average " << std::endl;
  std::cout << "Timings written to: " << filename << std::endl;
}

template <class T, T (*F)(PTRARGS), typename... args>
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
#ifdef VOIDRETTYPE
  apply_fun_gpu<F, args...>(input);
#else
  apply_fun_gpu<T, F, args...>(input, output);
#endif
  output.save(filename);
  // Some functions write results to input variables, if they are of pointer
  // type
#ifdef ARG1POINTER
  std::get<0>(input).save(filename + "_0");
#endif
#ifdef ARG2POINTER
  std::get<1>(input).save(filename + "_1");
#endif
#ifdef ARG3POINTER
  std::get<2>(input).save(filename + "_2");
#endif
}

template <class T, T (*F)(PTRARGS), typename... args>
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
#ifdef VOIDRETTYPE
  apply_fun_cpu<F, args...>(input);
#else
  apply_fun_cpu<T, F, args...>(input, output);
#endif
  output.save(filename);
  // Some functions write results to input variables, if they are of pointer
  // type
#ifdef ARG1POINTER
  std::get<0>(input).save(filename + "_0");
#endif
#ifdef ARG2POINTER
  std::get<1>(input).save(filename + "_1");
#endif
#ifdef ARG3POINTER
  std::get<2>(input).save(filename + "_2");
#endif
}
} // namespace gpumath

#endif