rm -rf figures/data/timings/*.txt figures/images/timings/*.png
rm -rf figures/data/differences/*.txt figures/images/differences/*.png
module load rocm
for filename in ../LLVM2/llvm-project/libc/src/math/gpu/*f.cpp; do
    tmp=$(basename "$filename" .txt)
    fun=${tmp%f.*}
    make clean; make APP=driver64 BUILTINFUN=$fun VENDORFUN=__ocml_$fun\_f64
    make APP=driver32 BUILTINFUN=$fun\f VENDORFUN=__ocml_$fun\_f32
    ./bin/driver64
    ./bin/driver32
    cd figures
    python3 histogram.py $fun __ocml_$fun\_f64
    python3 histogram.py $fun\f __ocml_$fun\_f32
    python3 brownian.py $fun __ocml_$fun\_f64
    python3 brownian.py $fun\f __ocml_$fun\_f32
    cd ..

    make APP=driver64 BUILTINFUN=$fun VENDORFUN=__ocml_$fun\_f64 temps TMPOUT=temps/${fun}/driver64
    make APP=driver32 BUILTINFUN=$fun\f VENDORFUN=__ocml_$fun\_f32 temps TMPOUT=temps/${fun}f/driver32

done

cd figures/images/timings
./makereadme.sh
cd ../differences
./makereadme.sh
cd ../../..
