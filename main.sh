#!/bin/bash
set -o nounset

# Job settings
#SBATCH -J gfx906
# Request one node
#SBATCH -N 1
# Request 63 cores per node
#SBATCH -n 63
# Time
#SBATCH -t 8:00:00

# Program settings
# Where to install LLVM
export LLVMDIR=/dev/shm/rydahl1/LLVMTMP
# Where to find the source files
export PROJECTDIR=`pwd`
# What architecture to install except for "host"
export VENDOR=AMDGPU # or NVPTX
# What subarchitecture to use
export GPUARCH=gfx906

# Making bin
mkdir -p $PROJECTDIR/bin

## Cloning LLVM source files
if [ -d "$LLVMDIR/llvm-project" ] 
then
    echo "Found existing LLVM source code in $LLVMDIR"
else
    rm -rf $LLVMDIR
    mkdir -p $LLVMDIR
    cd $LLVMDIR
    git init
    git clone https://github.com/llvm/llvm-project
fi
cd $LLVMDIR/llvm-project
git checkout 3d8010363895bd063a2d33172a07985b4c9b97ee
git apply $PROJECTDIR/patches/D156263.diff

# Installing LLVM for VENDOR and GPUARCH
cd $PROJECTDIR
export LIBC_GPU_VENDOR_MATH=ON
export LIBC_GPU_BUILTIN_MATH=OFF
source install_libc.sh

# Running CPU tests
cd $PROJECTDIR 
./cpu_builtin.sh
cd $PROJECTDIR
./cpu_libc.sh

# Running GPU tests
cd $PROJECTDIR
if [[ "$VENDOR" == "AMDGPU" ]]; then
    export OMPTARGET=amdgcn-amd-amdhsa
    ./gpu_ocml.sh
fi

cd $PROJECTDIR
if [[ "$VENDOR" == "NVPTX" ]]; then
    export OMPTARGET=nvptx   
    ./gpu_nv.sh
fi

# Built-in math functions
cd $PROJECTDIR
export LIBC_GPU_VENDOR_MATH=OFF
export LIBC_GPU_BUILTIN_MATH=ON
source install_libc.sh
cd $PROJECTDIR
./gpu_builtin.sh

# Built-in math functions
cd $PROJECTDIR
export LIBC_GPU_VENDOR_MATH=OFF
export LIBC_GPU_BUILTIN_MATH=OFF
source install_libc.sh
cd $PROJECTDIR
./gpu_lib.sh