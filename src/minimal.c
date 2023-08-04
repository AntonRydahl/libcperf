extern float cosf(float);

int main(void){
	float x = 0.0;
	#pragma omp target map(from:x)
	{
		x=cosf(0.12345);
	}
	return (int) x;
}
