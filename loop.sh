for fun in sin asin sinh cos acos cosh tan atan tanh; do
    make clean; make BUILTINFUN=$fun VENDORFUN=__ocml_$fun\_f64
    ./bin/driver
    cd figures
    python3 histogram.py $fun __ocml_$fun\_f64
    cd ..
done