rm -rf figures/data/* figures/images/*
module load rocm
for fun in sinh tan tanh; do
    make clean; make APP=driver64 BUILTINFUN=$fun VENDORFUN=__ocml_$fun\_f64
    clean; make APP=driver32 BUILTINFUN=$fun\f VENDORFUN=__ocml_$fun\_f32
    ./bin/driver64
    ./bin/driver32
    cd figures
    python3 histogram.py $fun __ocml_$fun\_f64
    python3 histogram.py $fun\f __ocml_$fun\_f32
    cd ..
done
