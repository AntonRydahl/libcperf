module load ninja
ROOTDIR=`pwd`
TARGETDIR=/dev/shm/rydahl1/LLVM
mkdir -p $TARGETDIR
cd $TARGETDIR
rm -rf build
mkdir build
rm -rf install
mkdir install
INSTALLDIR=$TARGETDIR/install
cd build
module load cmake/3.23.1
module load cuda/11.5.0 
module load gcc/8.3.1

cmake \
        -G Ninja \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=$INSTALLDIR \
        -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
        -DCMAKE_CXX_LINK_FLAGS="-Wl,-rpath,$LD_LIBRARY_PATH" \
        -DLLVM_ENABLE_ASSERTIONS=ON \
        -DLLVM_BUILD_EXAMPLES=ON \
        -DLLVM_LIT_ARGS=-v \
        -DLLVM_LIBC_FULL_BUILD=1 \
        -DLLVM_TARGETS_TO_BUILD="host;NVPTX" \
        -DLLVM_ENABLE_PROJECTS="clang;lld;openmp" \
        -DLLVM_ENABLE_RUNTIMES="libc;compiler-rt" \
	-DLIBOMPTARGET_ENABLE_DEBUG=ON  \
        -DLIBC_GPU_ARCHITECTURES=sm_70 \
	-DLIBC_GPU_TEST_ARCHITECTURE=sm_70 \
        -DLIBC_GPU_VENDOR_MATH=ON \
        -DLIBC_GPU_BUILTIN_MATH=OFF \
        /g/g92/rydahl1/LLVM2/llvm-project/llvm
#        -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \

ninja install -j 8

export PATH=$TARGETDIR/install/bin/:$PATH
export LD_LIBRARY_PATH=$TARGETDIR/install/lib/:$LD_LIBRARY_PATH
cd $ROOTDIR
