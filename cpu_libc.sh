#!/bin/bash
source .bashrc
rocm-smi
source bashhelpers/get_args.sh
source bashhelpers/get_rettype.sh
export OMP_NUM_THREADS=63
for filename in ../LLVM2/llvm-project/libc/src/math/generic/*.cpp; do
    tmp=$(basename "$filename" .cpp)
    if [[ "${tmp:0-1}" == "l" ]]  && [[ "$filename" != *"ceil."* ]]; then
        echo "Skipping long double function: ${tmp}"
        continue
    fi
    if [[ "$tmp" == *"utils"* ]] || [[ "$tmp" == *"common"* ]] || [[ "$tmp" == *"explogxf"* ]]; then
        echo "Skipping utility file."
        continue
    fi
    FUN=${tmp%.*}
    ARGS=$(get_args $FUN)
    RETTYPE=$(get_rettype $FUN)
    make clean;
    if make APP=vararg_cpu FUNCTION="$FUN" RETTYPE="$RETTYPE" ARGS="$ARGS" PREFIX="$FUN/host/" LINKCPULIBC=1; then
        mkdir -p figures/results/timings/$FUN/host
        mkdir -p figures/results/output/$FUN/host
        ./bin/vararg_cpu
    fi
done