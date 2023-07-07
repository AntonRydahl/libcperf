#!/bin/bash
source .bashrc
module load rocm
rocm-smi
ls -a
for filename in ../LLVM2/llvm-project/libc/src/math/*.h; do
    tmp=$(basename "$filename" .h)
    if [ "${tmp:0-1}" == "l" ]; then
        echo "Skipping long double function: ${tmp}"
        continue
    fi
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
    mkdir -p figures/results/timings/$fun/host
    mkdir -p figures/results/output/$fun/host
    make clean; make APP=vararg_cpu FUNCTION=$fun RETTYPE=$RETTYPE ARGS=$ARGS NARGS=$NARGS PREFIX="$fun/host/"
    ./bin/vararg_cpu
done