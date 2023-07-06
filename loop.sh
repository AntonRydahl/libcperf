rm -rf figures/data/timings/*.txt figures/images/timings/*.png
rm -rf figures/data/differences/*.txt figures/images/differences/*.png
module load rocm
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
    if [ "$RETTYPE" = "double" ]; then
        VENDORFUN=__ocml_$fun\_f64
    else
        VENDORFUN=__ocml_${fun::-1}\_f32
    fi
    make clean; make APP=vararg BUILTINFUN=$fun VENDORFUN=$VENDORFUN RETTYPE=$RETTYPE ARGS=$ARGS NARGS=$NARGS
    ./bin/vararg
    cd figures
    python3 histogram.py $fun $VENDORFUN
    python3 brownian.py $fun $VENDORFUN
    cd ..
    make -i APP=vararg BUILTINFUN=$fun VENDORFUN=$VENDORFUN RETTYPE=$RETTYPE ARGS=$ARGS NARGS=$NARGS temps TMPOUT=temps/$fun

done

cd figures/images/timings
./makereadme.sh
cd ../differences
./makereadme.sh
cd ../../..
