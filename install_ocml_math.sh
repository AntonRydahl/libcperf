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
        -DLLVM_TARGETS_TO_BUILD="host;AMDGPU" \
        -DLLVM_ENABLE_PROJECTS="clang;lld;openmp" \
        -DLLVM_ENABLE_RUNTIMES="libc;compiler-rt" \
	-DLIBOMPTARGET_ENABLE_DEBUG=ON  \
        -DLIBC_GPU_ARCHITECTURES=gfx906 \
	-DLIBC_GPU_TEST_ARCHITECTURE=gfx906 \
        -DLIBC_GPU_VENDOR_MATH=ON \
        -DLIBC_GPU_BUILTIN_MATH=OFF \
        /g/g92/rydahl1/LLVM2/llvm-project/llvm

ninja install -j 63

export PATH=$TARGETDIR/install/bin/:$PATH
export LD_LIBRARY_PATH=$TARGETDIR/install/lib/:$LD_LIBRARY_PATH
#cd $ROOTDIR
module load rocm
ninja check-libc -C runtimes/runtimes-bins -k 1000 #check-clang check-flang 