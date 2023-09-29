#!/bin/bash
set -o nounset

source bashhelpers/get_args.sh
source bashhelpers/get_rettype.sh
source bashhelpers/get_mpfr_name.sh

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
    MPFRFUN=mpfr_$FUN
    if [[ "${tmp:0-1}" == "f" ]] && [[ "$FUN" != "erf" ]] && [[ "$FUN" != "modf" ]]; then
        VENDORFUN=__nv_${FUN::-1}\_f32
        MPFRFUN=mpfr_${FUN::-1}
    else
        VENDORFUN=__nv_$FUN\_f64
    fi
    MPFRFUN=$(get_mpfr_name $FUN)
    make clean;
    if make APP=vararg_mpfr GPUFUN="$FUN" CPUFUN="$FUN" RETTYPE="$RETTYPE" ARGS="$ARGS" PREFIX="$GPUARCH/$FUN/__nv_" MPFRFUN="$MPFRFUN"; then
        mkdir -p figures/mpfr/output/$GPUARCH/$FUN
        ./bin/vararg_mpfr
    fi
    #if [[ "$ARGS" == "float" ]]; then 
    #    if make APP=vararg_histogram GPUFUN="$FUN" CPUFUN="$FUN" RETTYPE="$RETTYPE" ARGS="$ARGS" PREFIX="$GPUARCH/$FUN/__nv_"; then
    #        mkdir -p figures/results/histograms/$GPUARCH/$FUN/
    #        ./bin/vararg_histogram
    #    fi
    #fi
done
