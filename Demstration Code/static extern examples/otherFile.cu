// temp4 is defined in another file.
// Note: this does not include .h files they are included at compile time not link time.

#include <stdio.h>

extern int temp4;  // Defined as a global in another file.
int temp5=2; // Defined as a global in this file.
void externExampleFunction()
{
	temp4++;
	printf(" temp4 = %d \n", temp4);
	
	temp5++;
	printf(" temp5 = %d \n", temp5);
}

