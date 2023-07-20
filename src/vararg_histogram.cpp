#include <fstream>
#include <iostream>
#include <limits.h>
#include <tuple>

#include "definitions.h"

#include "histogram.h"

/**
 * The main function is simply calling the template to make a histogram with the
 * right template arguments which have been configured in the makefile.
 */

int main(void) {
  std::string devicename = xstr(CPUFUN);
  gpumath::make_hist<RETTYPE, GPUFUN, wrapperfun, ARGS>(
      "figures/results/histograms/" + std::string(PREFIXSTR) + devicename);
  return 0;
}
