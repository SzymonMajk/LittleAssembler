//---------------------------------------------------------------
// i386 (32 bit), return maximal differention between arguments
//
// To compile&link: gcc -m32 -o maxdiff maxdiff.c maxdiffa.s
// To run:          ./maxdiff
//
//---------------------------------------------------------------

#include <stdio.h>

int max_diff(int a, int b, int c, int d)
{
	int result = 1;
	
	return result;			
}

int max_diffA(int a, int b, int c, int d);

void main( void )
{
   printf("C = %d As = %d\n",max_diff(2,5,3,1),max_diffA(2,5,3,1));
}
