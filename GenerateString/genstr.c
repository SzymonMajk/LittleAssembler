//---------------------------------------------------------------
// (64 bit), return maximal differention between arguments
//
// To compile&link: gcc -o genstr genstr.c genstr.s
// To run:          ./genstr
//
//---------------------------------------------------------------

#include <stdio.h>
#include <stdlib.h>

char* generate_str(char* s, int c, int n, int inc)
{
	return s;
}

char* generate_strA(char* s, int c, int n, int inc);

void main( void )
{
	char* buf = malloc(1000);

	printf("C = %s As = %s\n",generate_str(buf,'a',3,0),generate_strA(buf,'a',3,0));
	printf("C = %s As = %s\n",generate_str(buf,'c',8,0),generate_strA(buf,'c',8,1));
}
