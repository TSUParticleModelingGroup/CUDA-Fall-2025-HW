// nvcc GlobalVsStaticVsLocal.cu -o temp

// temp1 is a normal local variable. It gets reset every time the function is called.

// temp2 is a static local variable. It gets set the first time the function is call but is remembered and not
// reset in subsaquent calls.

// temp3 is a global variable. The static variable acts like a global but can "NOT" be seen from other functions
// so it is safer in that other functions cannot adjust it by mistake. But it can be dangerous if you mistakenly
// think it is going to always be set at each function call. 

// temp4 is an external variable meaning it is a global variable but is defined in another file.

#include <stdio.h>
// Prototypes 
void incrementNumber();

// Globals
int temp3 = 0;

void incrementNumber()
{
	int temp1 = 0;
	static int temp2 = 0;
	
	temp1++;
	temp2++;
	temp3++;
	printf(" temp1 = %d \n", temp1);
	printf(" temp2 = %d \n", temp2);
	printf(" temp3 = %d \n", temp3);
	printf(" *******************************************\n");
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
