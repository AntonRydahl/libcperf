# Comparing LIBC and OCML Functions
This project compares the LLVM LIBC math implementations from `<LLVM_ROOT>/libc/src/math/generic` to the [HIP math implementations](https://github.com/llvm/llvm-project/blob/main/clang/lib/Headers/__clang_hip_math.h) and the `__builtin` math functions.

## Installation and Compilation
The `src` and `include` folders contain `C++` templates and source files for running the math functions on uniformly distributed ranges of input. To compile the project, one must first install LLVM with LIBC configured to include either generic or `__builtin` functions in `libmgpu.a`. The two scripts [`install_builtin_math.sh`](https://github.com/AntonRydahl/libcperf/blob/main/install_builtin_math.sh) and [`install_libc_math.sh`](https://github.com/AntonRydahl/libcperf/blob/main/install_libc_math.sh) can be used to build and install LLVM with LIBC configured to use generic or `__builtin` implementations, respectively.
<br>
To run the `make`, environment variables specifying the math function to be tested, return type, and input arguments must be configured. To make and run all `__builtin` functions on the device, use the shell scripts
```bash
source install_builtin_math.sh
./gpu_builtin.sh
```
To run install multiple versions of LIBC and test all the different versions, type
```bash
source driver.sh
```
## Results
To see the results, please navigate to [./figures/error_plots.md](https://github.com/AntonRydahl/libcperf/blob/main/figures/error_plots.md) or [./figures/timing_histograms.md](https://github.com/AntonRydahl/libcperf/blob/main/figures/timing_histograms.md). The former compares the output of the functions executed on the GPU using vendor and LIBC functions for an equidistantly spaced range of inputs. The latter compares the walltime of running the functions in GPU kernels.

## Updating LLVM
`patches` contains a patch that can be used to update the LLVM main branch to only include `__builtin` functions in the GPU match archive `libmgpu.a`. 