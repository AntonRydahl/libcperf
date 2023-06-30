#!/bin/bash
echo "# Timings for LIBC and OCML Math Functions on AMD MI50" > README.md
echo "The sinle-input math functions were tested on an AMD MI50 for 64 and 32-bit floating points. the functions were tested by running a naive kernel applying the functions to 4.3 GB of doubles / 2.15 GB of floats." >> README.md
echo " 64-bit            | 32-bit" >> README.md
echo ":-------------------------:|:-------------------------:" >> README.md
for filename in ../differences/*f.png; do
    tmp=$(basename "$filename" .png)
    fun=${tmp%f*}
    echo $fun
    echo "![${fun} VS __ocml_${fun}_f64](${fun}x__ocml_${fun}_f64.png)  | ![${fun}f VS __ocml_${fun}_f32](${fun}fx__ocml_${fun}_f32.png)" >> README.md
done
