#!/bin/bash
source .bashrc
module load rocm
rocm-smi
ls -a
for filename in ../LLVM2/llvm-project/libc/src/math/gpu/*.cpp; do
    tmp=$(basename "$filename" .txt)
    fun=${tmp%.*}
    ARGSTR=$(cat ../LLVM2/llvm-project/libc/src/math/${fun}.h | grep "(*)") #| cut -d " " -f1
    if [ -z "$ARGSTR" ]; then
        echo "Skipping $fun. Headerfile not found."
        continue
    fi
    RETTYPE=$(echo $ARGSTR | cut -d " " -f1)

    args=$(echo $ARGSTR | cut -d "(" -f2)
    args=$(echo $args | cut -d ")" -f1)
    ARGS="";
    NARGS=0
    for arg in ${args//,/ }; do
        if [ ${#arg} -gt 2 ]; then
            if [ -z "$ARGS" ]; then
                ARGS="$arg"
            else
                ARGS="$ARGS,$arg"
            fi
            NARGS=$(($NARGS+1))
        fi
    done
    VENDORFUN=$fun
    mkdir -p figures/results/timings/$fun/device
    mkdir -p figures/results/output/$fun/device
    make clean; make APP=vararg_gpu FUNCTION=$VENDORFUN RETTYPE=$RETTYPE ARGS=$ARGS NARGS=$NARGS PREFIX="$fun/device/__builtin_"
    ./bin/vararg_gpu
done
