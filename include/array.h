#ifndef _GPU_MATH_ARRAY_
#define _GPU_MATH_ARRAY_

#include <fstream>
#include <iomanip>
#include <iostream>
#include <omp.h>

namespace gpumath {

/**
 * Defining the data types used in all functions in this namespace
 */

using int_t = int32_t;
using uint_t = uint32_t;
using float_t = float;
using double_t = double;

/**
 * This array type is the basic building block of this project. It allocates
 * memory on both host and device, even if the array is only used on the
 * host or vice versa. This could be improved if needed by changing the
 * functionality of to_host() and to_device() to allocate the array when
 * it is needed.
 */

template <class T> class Array {
private:
  T *_hostptr;
  T *_devptr;
  uint_t _length;
  int_t _host;
  int_t _device;
  bool _on_device = true;

public:
  /**
   * By default an array of doubles will allocate 4.29 GB on host and
   * device. It sets the device to the default device, if the device
   * is not specified.
   */

  Array(uint_t l = 0x17FFFFFF, int_t d = omp_get_default_device(),
        int_t h = omp_get_initial_device());
  ~Array();
  void to_device();
  void to_host();
  /**
   *
   * The array class contains '_on_device' which can be used to check
   * where the array was last used.
   */
  bool on_device() const { return _on_device; };
  T *devptr() const { return _devptr; };
  T *hostptr() const { return _hostptr; };
  int_t host() const { return _host; };
  int_t device() const { return _device; };
  uint_t length() const { return _length; };
  void reshape(uint_t l);
  void save(std::string filename);
};

/**
 * The array constructor allocates arrays on both host and device.
 */

template <class T>
Array<T>::Array(uint_t l, int_t d, int_t h) : _length{l}, _host{h}, _device{d} {
  this->_hostptr = (T *)malloc((size_t)this->_length * ((size_t)sizeof(T)));
  if (this->_hostptr == NULL) {
    std::cerr << "Error allocating Array on host " << this->_host << std::endl;
  }
  this->_devptr = (T *)omp_target_alloc(
      (size_t)this->_length * ((size_t)sizeof(T)), (int)this->_device);
  if (this->_devptr == NULL) {
    std::cerr << "Error allocating Array on device " << this->_device
              << std::endl;
  }
}

template <class T> Array<T>::~Array() {
  free(this->_hostptr);
  this->_hostptr = NULL;
  omp_target_free(this->_devptr, (int)this->_device);
  this->_devptr = NULL;
}

/**
 * The array class contains '_on_device' which can be used to check where
 * the array was last used.
 */

template <class T> void Array<T>::to_device() {
  int_t res = omp_target_memcpy(this->_devptr, this->_hostptr,
                                (int)this->_length * sizeof(T), 0, 0,
                                (int)this->_device, (int)this->_host);
  if (res != 0) {
    std::cerr << "H2D error on device " << this->_device
              << ": omp_target_memcpy returned " << res << std::endl;
  } else {
    _on_device = true;
  }
}

template <class T> void Array<T>::to_host() {
  int_t res = omp_target_memcpy(this->_hostptr, this->_devptr,
                                (int)this->_length * sizeof(T), 0, 0,
                                (int)this->_host, (int)this->_device);
  if (res != 0) {
    std::cerr << "Error on device " << this->_device
              << ":omp_target_memcpy returned " << res << std::endl;
  } else {
    _on_device = false;
  }
}

/**
 * When reshaping the array, it is deallocated on both host and device
 * and then allocated anew.
 */

template <class T> void Array<T>::reshape(uint_t l) {
  this->_length = l;
  free(this->_hostptr);
  this->_hostptr = (T *)malloc((size_t)this->_length * ((size_t)sizeof(T)));
  if (this->_hostptr == NULL) {
    std::cerr << "Error allocating Array on host " << this->_host << std::endl;
  }
  omp_target_free(this->_devptr, (int)this->_device);
  this->_devptr = (T *)omp_target_alloc(
      (size_t)this->_length * ((size_t)sizeof(T)), (int)this->_device);
  if (this->_devptr == NULL) {
    std::cerr << "Error allocating Array on device " << this->_device
              << std::endl;
  }
}

template <class T> void Array<T>::save(std::string filename) {
  if (this->_on_device)
    this->to_host();
  std::ofstream result_file(filename);
  for (uint_t i = 0; i < this->_length; i++) {
    result_file << std::fixed << std::setprecision(53) << std::scientific << this->_hostptr[i]
                << std::endl;
  }
  result_file.close();
  std::cout << "Results written to " << filename << std::endl;
}

/**
 * As you cannot allocate an array of void pointers in C++ special care must
 * for void arrays. Therefore, the following specialization is needed.
 */

template <>
Array<void>::Array(uint_t l, int_t d, int_t h)
    : _length{l}, _host{h}, _device{d} {
  this->_hostptr = NULL;
  this->_devptr = NULL;
}

template <> Array<void>::~Array() {
  // Nothing happens since nothing was alocated
}

template <> void Array<void>::to_device() { _on_device = true; }

template <> void Array<void>::to_host() { _on_device = false; }

template <> void Array<void>::reshape(uint_t l) { this->_length = l; }

template <> void Array<void>::save(std::string filename) {}
} // namespace gpumath
#endif
