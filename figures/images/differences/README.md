# Validating the Correctness of LIBC and OCML on the Device
The tests were performed by computing results with sinle-input math functions on an AMD MI50 for 64 and 32-bit floating points. The results were computed on an equidistantly spaced grid from -Pi to Pi. The reference solution was computed with LIBC on the host and the absolute difference between the host and device results have been plotted below.
 OCML Device Absolute Difference            | LIBC Device Absolute Difference
:-------------------------:|:-------------------------:
![__ocml_nearbyint_f64](__ocml_nearbyint_f64.png)  | ![nearbyint](nearbyint.png)
![__ocml_nearbyint_f32](__ocml_nearbyint_f32.png)  | ![nearbyintf](nearbyintf.png)
![__ocml_rint_f64](__ocml_rint_f64.png)  | ![rint](rint.png)
![__ocml_rint_f32](__ocml_rint_f32.png)  | ![rintf](rintf.png)
![__ocml_round_f64](__ocml_round_f64.png)  | ![round](round.png)
![__ocml_round_f32](__ocml_round_f32.png)  | ![roundf](roundf.png)
![__ocml_sinh_f64](__ocml_sinh_f64.png)  | ![sinh](sinh.png)
![__ocml_sinh_f32](__ocml_sinh_f32.png)  | ![sinhf](sinhf.png)
![__ocml_tan_f64](__ocml_tan_f64.png)  | ![tan](tan.png)
![__ocml_tan_f32](__ocml_tan_f32.png)  | ![tanf](tanf.png)
![__ocml_tanh_f64](__ocml_tanh_f64.png)  | ![tanh](tanh.png)
![__ocml_tanh_f32](__ocml_tanh_f32.png)  | ![tanhf](tanhf.png)
