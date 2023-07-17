# Clear old results
rm -rf figures/results/output/*
rm -rf figures/results/timings/*
# Install and test LIBC implementations of the math library on
# both host and device.
source install_libc_math.sh
./gpu_libc.sh
./cpu_libc.sh

# Install and test builtin math functions on the device.
source install_builtin_math.sh
./gpu_builtin.sh

# There is no need to install a separate clang compiler to test the
# OCML math library as one can just load the ROCM module and call
# functions such as __ocml_sin_f32 directly rather than sinf.
./gpu_ocml.sh

# Make figures with python
cd figures
python3 error_plots.py
python3 timing_histograms.py
cd ..