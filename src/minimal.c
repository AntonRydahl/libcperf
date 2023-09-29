extern float ldexpf(float,int exp);

int main(void){
	float x = 0.0;
	#pragma omp target map(from:x)
	{
		x=ldexpf(0.12345,12);
	}
	return (int) x;
}
