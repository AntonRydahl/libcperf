
#ifndef _GPU_MATH_DEFINITIONS_
#define _GPU_MATH_DEFINITIONS_

#include <cmath>

#ifndef GPUFUN
#define GPUFUN __ocml_copysign_f32
#endif

#ifndef CPUFUN
#define CPUFUN __builtin_copysignf
#endif

#ifndef PREFIX
#define PREFIXSTR ""
#else
#define PREFIXSTR xstr(PREFIX)
#endif

#ifndef NARGS
#define NARGS 2
#endif

#ifndef ARGS
#define ARGS float, float
#endif

#ifndef RETTYPE
#define RETTYPE float
#endif

#define xstr(a) strmacro(a)
#define strmacro(a) #a

#ifndef PTRARGS
#define PTRARGS ARGS
#endif

#ifndef WRAPPERARGS
#define WRAPPERARGS float x, float y
#endif

#ifndef WRAPPERNAMES
#define WRAPPERNAMES x, y
#endif

extern "C" {
RETTYPE GPUFUN(PTRARGS);
}

/**
 * Some functions require configuring separate host and device functions. They
 * may be the same, but if the device functions is set to __ocml_xyz it will
 * obviously not be compatible with the host.
 */

inline RETTYPE wrapperfun(WRAPPERARGS) { return CPUFUN(WRAPPERNAMES); }

#endif
