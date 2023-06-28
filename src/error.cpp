#include <iostream>
#include <math.h>

template<class T, typename F>
T foo(F f,T x){
  return f(x);
}

int main(void) {
  std::cout << "foo(sinf,0.34) is " << foo(sinf,0.34) << std::endl;
  std::cout << "foo([](double d){ return sin(d); },0.34) is " << foo([](double d){ return sin(d); },0.34) << std::endl;
  std::cout << "foo(static_cast<double(*)(double)>(sin),0.34) is " << foo(static_cast<double(*)(double)>(sin),0.34) << std::endl;
  return 0;
}