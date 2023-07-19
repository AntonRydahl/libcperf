#ifndef _GPU_MATH_ARRAY_
#define _GPU_MATH_ARRAY_

#include <iostream>
#include <fstream>
#include <iomanip>
#include <omp.h>

namespace gpumath {

    using int_t = int32_t;
    using uint_t = uint32_t;
    using float_t = float;
    using double_t = double;

    template<class T>
    class Array {
        private:
            T * _hostptr;
            T * _devptr;
            uint_t _length;
            int_t _host;
            int_t _device;
            bool _on_device = true;
        public:
            Array(uint_t l = 0x1FFFFFFF, int_t d = omp_get_default_device(), int_t h = omp_get_initial_device());
            ~Array();
            void to_device();
            void to_host();
            bool on_device() const {return _on_device;};
            T * devptr() const {return _devptr;};
            T * hostptr() const {return _hostptr;};
            int_t host() const {return _host;};
            int_t device() const {return _device;};
            uint_t length() const {return _length;};
            void reshape(uint_t l);
            T infinity_norm() const;
            void save(std::string filename);
    };

    template <class T>
	Array<T>::Array(uint_t l, int_t d, int_t h) : _length{l}, _host{h}, _device{d} {
        this->_hostptr = (T*) malloc((size_t)this->_length*((size_t) sizeof(T)));
		if (this->_hostptr == NULL){
			std::cerr << "Error allocating Array on host " << this->_host << std::endl;
		}
		this->_devptr = (T*) omp_target_alloc((size_t)this->_length*((size_t)sizeof(T)),(int)this->_device);
		if (this->_devptr == NULL){
			std::cerr << "Error allocating Array on device " << this->_device << std::endl;
		}
    }

    template <class T>
	Array<T>::~Array() {
        free(this->_hostptr);
        this->_hostptr = NULL;
		omp_target_free(this->_devptr,(int)this->_device);
        this->_devptr = NULL;
    }

    template <class T>
	void Array<T>::to_device() {
		int_t res = omp_target_memcpy(this->_devptr,this->_hostptr,(int) this->_length*sizeof(T),0,0,(int) this->_device,(int) this->_host);
		if (res != 0){
			std::cerr << "H2D error on device " << this->_device << ": omp_target_memcpy returned " << res << std::endl;
		}
        else {
            _on_device = true;
        }
	}

    template <class T>
	void Array<T>::to_host() {
		int_t res = omp_target_memcpy(this->_hostptr,this->_devptr,(int) this->_length*sizeof(T),0,0,(int) this->_host,(int) this->_device);
		if (res != 0){
			std::cerr <<  "Error on device " << this->_device << ":omp_target_memcpy returned " << res << std::endl;
		}
        else {
            _on_device = false;
        }
	}

    template <class T> void Array<T>::reshape(uint_t l) {
        this->_length = l;
        free(this->_hostptr);
        this->_hostptr = (T *)malloc((size_t)this->_length * ((size_t)sizeof(T)));
        if (this->_hostptr == NULL) {
            std::cerr << "Error allocating Array on host " << this->_host
                      << std::endl;
        }
        omp_target_free(this->_devptr, (int)this->_device);
        this->_devptr = (T *)omp_target_alloc((size_t)this->_length * ((size_t) sizeof(T)),
                                              (int)this->_device);
        if (this->_devptr == NULL) {
            std::cerr << "Error allocating Array on device " << this->_device
                      << std::endl;
        }
    }

    template<class T>
	T Array<T>::infinity_norm() const{
		T res = 0.0;
		const int_t device = this->_device;
        const int length = this->_length;
		T * devptr = this->_devptr;
		#pragma omp target device(device) is_device_ptr(devptr) map(always,tofrom:res)
		{
		    #pragma omp teams distribute parallel for simd reduction(max:res)
			for(int_t i = 0;i<length;i++){
				T abselem = std::abs(devptr[i]);
                res = std::max(res,abselem);
			}
		}
		return res;
	}

    template <class T> 
    void Array<T>::save(std::string filename) {
        if (this->_on_device)
            this->to_host();
        std::ofstream result_file(filename);
        for (uint_t i = 0; i < this->_length; i++) {
            result_file << std::fixed << std::setprecision(32)
                << this->_hostptr[i] << std::endl;
        }
        result_file.close();
        std::cout << "Results written to " << filename << std::endl;
    }

    template <>
	Array<void>::Array(uint_t l, int_t d, int_t h) : _length{l}, _host{h}, _device{d} {
        this->_hostptr = NULL;
		this->_devptr = NULL;
    }

    template <>
	Array<void>::~Array(){
        // Nothing happens since nothing was alocated
    }

    template <>
	void Array<void>::to_device() {
		_on_device = true;
	}

    template <>
	void Array<void>::to_host() {
		_on_device = false;
	}

    template <> 
    void Array<void>::reshape(uint_t l) {
        this->_length = l;
    }

    template <> 
    void Array<void>::save(std::string filename) {

    }
}
#endif
