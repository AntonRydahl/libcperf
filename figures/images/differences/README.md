# Validating the Correctness of LIBC and OCML on the Device
The tests were performed by computing results with sinle-input math functions on an AMD MI50 for 64 and 32-bit floating points. The results were computed on an equidistantly spaced grid from -Pi to Pi. The reference solution was computed with LIBC on the host and the absolute difference between the host and device results have been plotted below.
 OCML Device Absolute Difference            | LIBC Device Absolute Difference
:-------------------------:|:-------------------------:
![{fun}_f64](figures/__ocml_nearbyint_f64.png)  | ![nearbyint](figures/nearbyint.png)
![{fun}_f32](figures/__ocml_nearbyint_f32.png)  | ![nearbyintf](figures/nearbyintf.png)
![{fun}_f64](figures/__ocml_rint_f64.png)  | ![rint](figures/rint.png)
![{fun}_f32](figures/__ocml_rint_f32.png)  | ![rintf](figures/rintf.png)
![{fun}_f64](figures/__ocml_round_f64.png)  | ![round](figures/round.png)
![{fun}_f32](figures/__ocml_round_f32.png)  | ![roundf](figures/roundf.png)
![{fun}_f64](figures/__ocml_sinh_f64.png)  | ![sinh](figures/sinh.png)
![{fun}_f32](figures/__ocml_sinh_f32.png)  | ![sinhf](figures/sinhf.png)
![{fun}_f64](figures/__ocml_tan_f64.png)  | ![tan](figures/tan.png)
![{fun}_f32](figures/__ocml_tan_f32.png)  | ![tanf](figures/tanf.png)
![{fun}_f64](figures/__ocml_tanh_f64.png)  | ![tanh](figures/tanh.png)
![{fun}_f32](figures/__ocml_tanh_f32.png)  | ![tanhf](figures/tanhf.png)
