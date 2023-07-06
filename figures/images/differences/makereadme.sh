#!/bin/bash
echo "# Validating the Correctness of LIBC and OCML on the Device" > README.md
echo "The tests were performed by computing results with sinle-input math functions on an AMD MI50 for 64 and 32-bit floating points. The results were computed on an equidistantly spaced grid from -Pi to Pi. The reference solution was computed with LIBC on the host and the absolute difference between the host and device results have been plotted below." >> README.md
echo " OCML Device Absolute Difference            | LIBC Device Absolute Difference" >> README.md
echo ":-------------------------:|:-------------------------:" >> README.md
for filename in ../differences/__ocml_*_*.png; do
    tmp=$(basename "$filename" .png)
    fun=${tmp%*}
    LIBCFUN=$(echo $fun | cut -d "_" -f4)
    VENDORFUN=$fun
    echo $LIBCFUN
    if [[ $filename == *"f32"* ]]; then
        echo "![${VENDORFUN}](${VENDORFUN}.png)  | ![${LIBCFUN}f](${LIBCFUN}f.png)" >> README.md
    else  
        echo "![${VENDORFUN}](${VENDORFUN}.png)  | ![${LIBCFUN}](${LIBCFUN}.png)" >> README.md
    fi
done
