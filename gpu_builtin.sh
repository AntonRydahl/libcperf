#!/bin/bash
source .bashrc
module load rocm
rocm-smi
source bashhelpers/get_args.sh
source bashhelpers/get_rettype.sh

for filename in ../LLVM2/llvm-project/libc/src/math/*.h; do
    tmp=$(basename "$filename" .h)
    if [[ "${tmp:0-1}" == "l" ]]  && [[ "$tmp" != *"ceil."* ]]; then
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
    if make APP=vararg_gpu FUNCTION="$FUN" RETTYPE="$RETTYPE" ARGS="$ARGS" PREFIX="$FUN/device/__builtin_"; then
        mkdir -p figures/results/timings/$FUN/device
        mkdir -p figures/results/output/$FUN/device
        ./bin/vararg_gpu
    fi
    if [[ "$ARGS" == "float" ]]; then 
        if make APP=vararg_histogram FUNCTION="$FUN" CPUFUN="$FUN" RETTYPE="$RETTYPE" ARGS="$ARGS" PREFIX="$FUN/__builtin_"; then
            mkdir -p figures/results/histograms/$FUN/
            ./bin/vararg_histogram
        fi
    fi
done