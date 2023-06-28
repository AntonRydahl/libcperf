# Comparing LIBC and OCML Functions
To make the `C++` driver, you may for instance type
```bash
make VENDORFUN=cos BUILTINFUN=__ocml_cos_f64
```
To get the intermediate representation, type
```bash
mkdir ir
make VENDORFUN=cos BUILTINFUN=__ocml_cos_f64 ir
```

## Plotting
The `figures` folder contains a `python3` driver to plot the results from the `C++` driver.

## Comparing Multiple Math Functions
To run a couple of tests and plot the distributions of the timings, type
```bash
module load rocm
source ./loop.sh
```