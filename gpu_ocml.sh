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
    VENDORFUN=''
    if [[ "${tmp:0-1}" == "f" ]]; then
        VENDORFUN=__ocml_${FUN::-1}\_f32
    else
        VENDORFUN=__ocml_$FUN\_f64
    fi
    make clean;
    if make APP=vararg_gpu FUNCTION="$VENDORFUN" RETTYPE="$RETTYPE" ARGS="$ARGS" PREFIX="$FUN/device/"; then
        mkdir -p figures/results/timings/$FUN/device
        mkdir -p figures/results/output/$FUN/device
        ./bin/vararg_gpu
    fi
done