#ifndef _GPU_MATH_HISTOGRAM_
#define _GPU_MATH_HISTOGRAM_

#include "array.h"
#include "compare.h"
#include "range.h"
#include <cmath>
#include <iostream>
#include <limits.h>

namespace gpumath {
/**
 * This function applies F1 and F2 to a range of floating point values. F1
 * on then device, and F2 on the host. It then computes the absolute errors
 * between the two solutions and stores the solution in devarr-.devptr. It
 * returns the mamximum error.
 */
template <class T, T (*F1)(PTRARGS), T (*F2)(PTRARGS), typename... args>
T absolute_difference(std::tuple<Array<args>...> &input, Array<T> &devarr,
                      Array<T> &hostarr) {
  // At first, the input must be on the device.
  if (!std::get<0>(input).on_device())
    std::get<0>(input).to_device();
  // The host array must be on the host, and the device array must be on
  // the device.
  if (!devarr.on_device())
    devarr.to_device();
  if (hostarr.on_device())
    hostarr.to_host();

  // First, F1 is applied to the input data on the device.
  apply_fun_gpu<T, F1, args...>(input, devarr);

  // Then the input is mapped back to the host, and F2 is applied on the
  // host.
  std::get<0>(input).to_host();
  apply_fun_cpu<T, F2, args...>(input, hostarr);

  // the result on the host is mapped back to the device.
  hostarr.to_device();

  // Finally, the absolute difference between the host and device
  // functions is computed on the device and stored in 'devarr'.
  T *refptr = hostarr.devptr();
  T *devptr = devarr.devptr();
  uint_t length = devarr.length();
  T maxval = 0.0;
#pragma omp target teams distribute parallel for reduction(max : maxval)       \
    is_device_ptr(refptr, devptr) map(always, tofrom : maxval)
  for (uint_t i = 0; i < length; i++) {
    devptr[i] = std::abs(refptr[i] - devptr[i]);
    if (!std::isnan(devptr[i]) && !std::isinf(devptr[i]))
      maxval = std::max(devptr[i], maxval);
  }
  return maxval;
    }

    /**
     * This function takes an array of absolute errors and the maximum absolute
     * error and computes how meny errors fall into equidistandly distributed
     * intervals in [0,maxval]. The results are written to <filename>_bins,
     * <filename>_counts, <filename>_infs, and <filename>_nans.
     */

    template <class T>
    void make_bins(T *arr, const uint_t length, const uint_t chunks,
                   const uint_t chunksize, T maxval, const std::string filename,
                   const int_t nbins = 100) {
      // Making sure that the maximum value is strictly greater than 0
      maxval = std::max(maxval, (T)1e-16);
      // The following four arrays store the output. The array class is used,
      // since it is easy to print the content of it.
      Array<T> bins(nbins + 1);
      Array<uint_t> counts(nbins);
      Array<uint_t> nans(1);
      Array<uint_t> infs(1);
      bins.to_host();
      counts.to_host();
      nans.to_host();
      infs.to_host();
    // Making the euidistanty spaced bins
#pragma omp parallel for
      for (uint_t i = 0; i < nbins + 1; i++) {
        bins.hostptr()[i] = ((T)i) * maxval / (((T)nbins) - 1);
      }
    // Initializing the counts to 0
#pragma omp parallel for
      for (uint_t i = 0; i < nbins + 1; i++) {
        counts.hostptr()[i] = 0;
      }
      uint_t nancounter = 0;
      uint_t infcounter = 0;
      uint_t total = 0;
      for (uint_t j = 0; j < chunks; j++) {
        // Avioding overflowing the upper bound when length is UINT_MAX
        uint_t lim = (j == chunks - 1) ? length : (j + 1) * chunksize;
    // As the entire array of errors may not fit in the device memory,
    // it is necessary to do the computations for chunks of the data.
#pragma omp target enter data map(always,                                  \
                                          to : arr[j * chunksize : chunksize])
        for (uint_t i = 0; i < nbins; i++) {
          T lb = bins.hostptr()[i];
          T ub = bins.hostptr()[i + 1];
          if (i == nbins - 1) {
            ub += 1e-10;
          }
          uint_t counter = 0;
    // A device reductions is made for each bin to count the number
    // of errors in the given interval
#pragma omp target teams distribute parallel for reduction(+ : counter)    \
        map(always, tofrom : counter)
          for (uint_t k = j * chunksize; k < lim; k++) {
            if (!std::isnan(arr[k]) && !std::isinf(arr[k])) {
              if ((arr[k] >= lb) && (arr[k] < ub)) {
                counter++;
              }
            }
          }
          counts.hostptr()[i] += counter;
          total += counter;
        }
    // For each chunk, we check how many errors were NaNs or not finite.
#pragma omp target teams distribute parallel for reduction(+ : nancounter, \
                                                                   infcounter) \
        map(always, tofrom : nancounter, infcounter)
        for (uint_t k = j * chunksize; k < lim; k++) {
          if (std::isnan(arr[k])) {
            nancounter++;
          }
          if (std::isinf(arr[k])) {
            infcounter++;
          }
        }
            #pragma omp target exit data map(delete:arr[j*chunksize:chunksize])
        }
        // Printing statistics
        std::cout << "Total number of elements: " << length << std::endl;
        std::cout << "\tClassified: " << total << std::endl;
        std::cout << "\tisnan(): " <<nancounter << std::endl;
        std::cout << "\tisinf(): "<< infcounter << std::endl;
        std::cout << "\tUnclassified: "
                  << length - infcounter - nancounter - total << std::endl;

        // Assuring that the total number of elements is exactly the sum of the
        // elemtns belonging to each category
        assert(length == total + nancounter + infcounter);

        // Saving the results
        nans.hostptr()[0]=nancounter;
        infs.hostptr()[0] = infcounter;
        nans.save(filename+"_nans");
        counts.save(filename+"_counts");
        bins.save(filename+"_bins");
        infs.save(filename+"_infs");
    }

    /**
     * The following function is looping over chunks of the range of all 32-bit
     * floating points, comparing the output to the host version, saving the
     * absolute difference in an array, and finally mapping chunks of the result
     * back to the device to count the number of errors in each bin for the
     * histogram.
     */

    template <class T, T (*F1)(PTRARGS), T (*F2)(PTRARGS), typename... args>
    void make_hist(const std::string filename, const uint_t chunks = 4) {
        T *fullarr = (T *)malloc(((size_t)UINT_MAX) * ((size_t)sizeof(T)));
        const uint_t chunksize = (UINT_MAX / chunks) + 1;
        T maxval = 0;
        // This scope is needed to clear the device memory after computing the
        // absolute errors for the entire floating point 32 range.
        {
          std::tuple<Array<args>...> input;
          std::get<0>(input).reshape(chunksize);
          Array<T> hostarray(chunksize);
          Array<T> devicearray(chunksize);
          // Splitting the 2 to the 32 different floating point values into
          // chunks of size 2^32/chunks.
          for (uint_t i = 0; i < chunks; i++) {
            // Intializing the range of floating points starting from
            // i*(chunksize)
            bit_range_32(std::get<0>(input), i * (chunksize));

            // Applying the host function F2 and the device functions F2
            // to the floating point range
            T tmpmax = absolute_difference<T, F1, F2, args...>(
                input, devicearray, hostarray);
            maxval = std::max(maxval, tmpmax);

            // Compying the absolute erors back to the full array on the
            // host
            devicearray.to_host();
            T *hostptr = devicearray.hostptr();
#pragma omp parallel for schedule(static)
            for (uint_t j = 0; j < (chunksize); j++) {
              fullarr[i * (chunksize) + j] = hostptr[j];
            }
          }
        }
        // Finally the absolute differences between the host and device output
        // is counted into bins and written to filename
        make_bins(fullarr, UINT_MAX, chunks, chunksize, maxval, filename);
        free(fullarr);
    }
}

#endif