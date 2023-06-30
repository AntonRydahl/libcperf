rm -rf figures/data/* figures/images/*
module load rocm
!/bin/bash
for filename in ../LLVM2/llvm-project/libc/src/math/gpu/*f.cpp; do
    tmp=$(basename "$filename" .txt)
    fun=${tmp%f.*}
    make clean; make APP=driver64 BUILTINFUN=$fun VENDORFUN=__ocml_$fun\_f64
    clean; make APP=driver32 BUILTINFUN=$fun\f VENDORFUN=__ocml_$fun\_f32
    ./bin/driver64
    ./bin/driver32
    cd figures
    python3 histogram.py $fun __ocml_$fun\_f64
    python3 histogram.py $fun\f __ocml_$fun\_f32
    cd ..
done
