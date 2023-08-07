#!/bin/bash
set -o nounset

source bashhelpers/get_args.sh
source bashhelpers/get_rettype.sh
for filename in $LLVMDIR/llvm-project/libc/src/math/gpu/vendor/*.cpp; do
    tmp=$(basename "$filename" .cpp)
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
    VENDORFUN=''
    if [[ "${tmp:0-1}" == "f" ]] && [[ "$FUN" != "erf" ]] && [[ "$FUN" != "modf" ]]; then
        VENDORFUN=__ocml_${FUN::-1}\_f32
    else
        VENDORFUN=__ocml_$FUN\_f64
    fi
    make clean;
    if make APP=vararg_gpu GPUFUN="$FUN" CPUFUN="$FUN" RETTYPE="$RETTYPE" ARGS="$ARGS" PREFIX="$GPUARCH/$FUN/device/__ocml_"; then
        mkdir -p figures/results/timings/$GPUARCH/$FUN/device
        mkdir -p figures/results/output/$GPUARCH/$FUN/device
        ./bin/vararg_gpu
    fi
    if [[ "$ARGS" == "float" ]]; then 
        if make APP=vararg_histogram GPUFUN="$FUN" CPUFUN="$FUN" RETTYPE="$RETTYPE" ARGS="$ARGS" PREFIX="$GPUARCH/$FUN/__ocml_"; then
            mkdir -p figures/results/histograms/$GPUARCH/$FUN/
            ./bin/vararg_histogram
        fi
    fi
done
