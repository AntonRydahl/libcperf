#!/bin/bash
echo "# Timings for LIBC and OCML Math Functions on AMD MI50" > README.md
echo "The sinle-input math functions were tested on an AMD MI50 for 64 and 32-bit floating points. the functions were tested by running a naive kernel applying the functions to 4.3 GB of doubles / 2.15 GB of floats." >> README.md
echo " 64-bit            | 32-bit" >> README.md
echo ":-------------------------:|:-------------------------:" >> README.md
for filename in ../differences/__ocml_*_f32.png; do
    tmp=$(basename "$filename" .png)
    fun=${tmp%*}
    LIBCFUN=$(echo $fun | cut -d "_" -f4)
    VENDORFUN=$fun
    echo $LIBCFUN
    if [ -f "../differences/__ocml_${LIBCFUN}_f64.png" ]; then
        echo "![${LIBCFUN} VS ${VENDORFUN}](${LIBCFUN}x__ocml_${LIBCFUN}_f64.png)  | ![${LIBCFUN}f VS ${VENDORFUN}](${LIBCFUN}fx${VENDORFUN}.png)" >> README.md
    else 
        echo " Missing | ![${LIBCFUN}f VS ${VENDORFUN}](${LIBCFUN}fx${VENDORFUN}.png) " >> README.md
    fi
done
