# Comparing LIBC and OCML Functions
To make the `C++` driver, you may for instance type
```bash
make BUILTINFUN=cos VENDORFUN=__ocml_cos_f64
```
To get the intermediate representation, type
```bash
mkdir ir
make BUILTINFUN=cos VENDORFUN=__ocml_cos_f64 ir
```
## Results
To see the results, please navigate to [./figures/images/differences/README.md](https://github.com/AntonRydahl/libcperf/blob/main/figures/images/differences/README.md) or [./figures/images/timings/README.md](https://github.com/AntonRydahl/libcperf/blob/main/figures/images/timings/README.md). The former compares the output on the GPU using vendor and LIBC functions for an equidistantly spaced range of inputs. The latter compares the walltime of running the functions in a GPU kernel.

## Plotting
The `figures` folder contains two `python3` drivers to plot the results from the `C++` driver.

## Updating LLVM
`patches` contains a patch that can be used to update the LLVM main branch to only include `__builtin` functions in the GPU match archive `libmgpu.a`. 

## Comparing Multiple Math Functions
To run a couple of tests and plot the distributions of the timings, type
```bash
source ./loop.sh
```