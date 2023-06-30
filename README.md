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

## Plotting
The `figures` folder contains two `python3` drivers to plot the results from the `C++` driver.

## Updating LLVM
`patches` contains a patch that can be used to update the LLVM main branch to only include `__builtin` functions in the GPU match archive `libmgpu.a`. 

## Comparing Multiple Math Functions
To run a couple of tests and plot the distributions of the timings, type
```bash
module load rocm
source ./loop.sh
```