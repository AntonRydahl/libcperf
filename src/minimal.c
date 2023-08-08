extern float sinf(float);

int main(void){
	float x = 0.0;
	#pragma omp target map(from:x)
	{
		x=sinf(0.12345);
	}
	return (int) x;
}
