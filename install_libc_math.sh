cd ../LLVM2
module load ninja
rm -rf build
mkdir build
rm -rf install
mkdir install
ROOTDIR=`pwd`
INSTALLDIR=$ROOTDIR/install
cd build
module load rocm

cmake \
        -G Ninja \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=$INSTALLDIR \
        -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
        -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
        -DCMAKE_CXX_LINK_FLAGS="-Wl,-rpath,$LD_LIBRARY_PATH" \
        -DLLVM_ENABLE_ASSERTIONS=ON \
        -DLLVM_BUILD_EXAMPLES=ON \
        -DLLVM_LIT_ARGS=-v \
        -DLLVM_LIBC_FULL_BUILD=1 \
        -DLLVM_TARGETS_TO_BUILD="host;X86;AMDGPU" \
        -DLLVM_ENABLE_PROJECTS="clang;lld;openmp" \
        -DLLVM_ENABLE_RUNTIMES="libc;compiler-rt" \
	-DLIBOMPTARGET_ENABLE_DEBUG=ON  \
	-DLIBC_GPU_ARCHITECTURES=gfx906 \
	-DLIBC_GPU_TEST_ARCHITECTURE=gfx906 \
        -DLIBC_GPU_VENDOR_MATH=OFF \
        -DLIBC_GPU_LIBC_MATH=ON \
        ../llvm-project/llvm

ninja install -j 63

export PATH=$ROOTDIR/install/bin/:$PATH
export LD_LIBRARY_PATH=$ROOTDIR/install/lib/:$LD_LIBRARY_PATH
cd ..
cd ../mathperf