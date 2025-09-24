//Playing around with roundoff
//nvcc RoundOffTest.cu -o temp
#include <stdio.h>

int main()
{
	float a;
	float b = 0.1;
	float c;
	double d;
	
	printf("\n");
	
	a = 10000000.0;
	printf("a = %f, b = %f a+b = %f\n", a, b, a+b);
	
	a = 1000000.0;
	printf("a = %f, b = %f a+b = %f\n", a, b, a+b);
	
	a = 100000.0;
	printf("a = %f, b = %f a+b = %f\n", a, b, a+b);
	
	a = 10000.0;
	printf("a = %f, b = %f a+b = %f\n", a, b, a+b);
	
	a = 1000.0;
	printf("a = %f, b = %f a+b = %f\n", a, b, a+b);
	
	a = 100.0;
	printf("a = %f, b = %f a+b = %f\n", a, b, a+b);
	
	a = 10.0;
	printf("a = %f, b = %f a+b = %f\n", a, b, a+b);
	
	a = 1.0;
	printf("a = %f, b = %f a+b = %f\n", a, b, a+b);
	
	printf("\n");
	a = 10000000.0;
	c = a;
	for(int i = 0; i < 1000000; i++)
	{
		c = c + b;
	}
	printf("float:  a = %f, b = %f a+1000000*b = %f\n", a, b, c);
	
	d = a;
	for(int i = 0; i < 1000000; i++)
	{
		d = d + (double)b;
	}
	printf("double: a = %f, b = %f a+1000000*b = %f\n", a, b, d);
	
	printf("\n");
	a = 1000000.0;
	c = a;
	for(int i = 0; i < 1000000; i++)
	{
		c = c + b;
	}
	printf("float:  a = %f, b = %f a+1000000*b = %f\n", a, b, c);
	
	d = a;
	for(int i = 0; i < 1000000; i++)
	{
		d = d + (double)b;
	}
	printf("double: a = %f, b = %f a+1000000*b = %f\n", a, b, d);
	
	printf("\n");
	a = 100000.0;
	c = a;
	for(int i = 0; i < 1000000; i++)
	{
		c = c + b;
	}
	printf("float:  a = %f, b = %f a+1000000*b = %f\n", a, b, c);
	
	d = a;
	for(int i = 0; i < 1000000; i++)
	{
		d = d + (double)b;
	}
	printf("double: a = %f, b = %f a+1000000*b = %f\n", a, b, d);
	
	printf("\n");
	a = 10000.0;
	c = a;
	for(int i = 0; i < 1000000; i++)
	{
		c = c + b;
	}
	printf("float:  a = %f, b = %f a+1000000*b = %f\n", a, b, c);
	
	d = a;
	for(int i = 0; i < 1000000; i++)
	{
		d = d + (double)b;
	}
	printf("double: a = %f, b = %f a+1000000*b = %f\n", a, b, d);
	
	printf("\n");
	a = 1000.0;
	c = a;
	for(int i = 0; i < 1000000; i++)
	{
		c = c + b;
	}
	printf("float:  a = %f, b = %f a+1000000*b = %f\n", a, b, c);
	
	d = a;
	for(int i = 0; i < 1000000; i++)
	{
		d = d + (double)b;
	}
	printf("double: a = %f, b = %f a+1000000*b = %f\n", a, b, d);
	
	printf("\n");
	a = 100.0;
	c = a;
	for(int i = 0; i < 1000000; i++)
	{
		c = c + b;
	}
	printf("float:  a = %f, b = %f a+1000000*b = %f\n", a, b, c);
	
	d = a;
	for(int i = 0; i < 1000000; i++)
	{
		d = d + (double)b;
	}
	printf("double: a = %f, b = %f a+1000000*b = %f\n", a, b, d);
	
	printf("\n");
	a = 10.0;
	c = a;
	for(int i = 0; i < 1000000; i++)
	{
		c = c + b;
	}
	printf("float:  a = %f, b = %f a+1000000*b = %f\n", a, b, c);
	
	d = a;
	for(int i = 0; i < 1000000; i++)
	{
		d = d + (double)b;
	}
	printf("double: a = %f, b = %f a+1000000*b = %f\n", a, b, d);
	
	printf("\n");
	a = 1.0;
	c = a;
	for(int i = 0; i < 1000000; i++)
	{
		c = c + b;
	}
	printf("float:  a = %f, b = %f a+1000000*b = %f\n", a, b, c);
	
	d = a;
	for(int i = 0; i < 1000000; i++)
	{
		d = d + (double)b;
	}
	printf("double: a = %f, b = %f a+1000000*b = %f\n", a, b, d);
	
	printf("\n");
	c = 0.0;
	for(int i = 0; i < 100000000; i++)
	{
		c = c + b;
	}
	for(int i = 0; i < 100000000; i++)
	{
		c = c - b;
	}
	printf("float+-:  c = %f\n",c);
	
	printf("\n");
	c = 0.0;
	for(int i = 0; i < 100000000; i++)
	{
		c = c - b;
	}
	for(int i = 0; i < 100000000; i++)
	{
		c = c + b;
	}
	printf("float-+:  c = %f\n",c);
	
	
	return(0);
}
