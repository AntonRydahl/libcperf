# Timings for LIBC and OCML Math Functions on AMD MI50
The sinle-input math functions were tested on an AMD MI50 for 64 and 32-bit floating points. the functions were tested by running a naive kernel applying the functions to 4.3 GB of doubles / 2.15 GB of floats.
 64-bit            | 32-bit
:-------------------------:|:-------------------------:
![nearbyint VS __ocml_nearbyint_f64](nearbyintx__ocml_nearbyint_f64.png)  | ![nearbyintf VS __ocml_nearbyint_f32](nearbyintfx__ocml_nearbyint_f32.png)
![rint VS __ocml_rint_f64](rintx__ocml_rint_f64.png)  | ![rintf VS __ocml_rint_f32](rintfx__ocml_rint_f32.png)
![round VS __ocml_round_f64](roundx__ocml_round_f64.png)  | ![roundf VS __ocml_round_f32](roundfx__ocml_round_f32.png)
![sinh VS __ocml_sinh_f64](sinhx__ocml_sinh_f64.png)  | ![sinhf VS __ocml_sinh_f32](sinhfx__ocml_sinh_f32.png)
![tan VS __ocml_tan_f64](tanx__ocml_tan_f64.png)  | ![tanf VS __ocml_tan_f32](tanfx__ocml_tan_f32.png)
![tanh VS __ocml_tanh_f64](tanhx__ocml_tanh_f64.png)  | ![tanhf VS __ocml_tanh_f32](tanhfx__ocml_tanh_f32.png)
