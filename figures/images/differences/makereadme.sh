#!/bin/bash
echo "# Validating the Correctness of LIBC and OCML on the Device" > README.md
echo "The tests were performed by computing results with sinle-input math functions on an AMD MI50 for 64 and 32-bit floating points. The results were computed on an equidistantly spaced grid from -Pi to Pi. The reference solution was computed with LIBC on the host and the absolute difference between the host and device results have been plotted below." >> README.md
echo " OCML Device Absolute Difference            | LIBC Device Absolute Difference" >> README.md
echo ":-------------------------:|:-------------------------:" >> README.md
for filename in ./*f.png; do
    tmp=$(basename "$filename" .png)
    fun=${tmp%f*}
    echo $fun
    echo "![$__ocml_{fun}_f64](figures/__ocml_${fun}_f64.png)  | ![${fun}](figures/${fun}.png)" >> README.md
    echo "![$__ocml_{fun}_f32](figures/__ocml_${fun}_f32.png)  | ![${fun}f](figures/${fun}f.png)" >> README.md

    #make clean; make APP=driver64 BUILTINFUN=$fun VENDORFUN=__ocml_$fun\_f64
    #clean; make APP=driver32 BUILTINFUN=$fun\f VENDORFUN=__ocml_$fun\_f32
done
