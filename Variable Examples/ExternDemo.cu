// nvcc -c otherFile.cu -o otherFile.o
// nvcc -c ExternDemo.cu -o ExternDemo.o  
// nvcc otherFile.o ExternDemo.o -o tempExtern

// temp4 is an external variable meaning it is a global variable but is defined in another file.

#include <stdio.h> // < > look for the header file in the system or standard include directories.
#include "other.h" // .h in this folder

void incrementNumber()
{
	extern int temp4; // Defined as a global in another file.
	
	temp4++;
	temp5++;
	printf(" temp4 = %d \n", temp4);
	printf(" temp5 = %d \n", temp5);
	printf(" *************************************\n");
}

int main()
{
	incrementNumber();
	incrementNumber();
	incrementNumber();
	incrementNumber();

	return 0;
}


// https://www.youtube.com/watch?v=ZLhnZAbcs2s
