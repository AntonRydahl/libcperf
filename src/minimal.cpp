//#include <cmath>
//#include <iostream>
#include <math.h>
//extern float sinf(float);

int main(void){
	float x = 0.0;
	#pragma omp target map(from:x)
	{
		x=ldexpf(0.12345,12);
	}
	//std::cout << x << std::endl;
	return (int) x ;//x - logbf(0.12345) < 1e-7f;
}
