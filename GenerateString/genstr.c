//---------------------------------------------------------------
// (64 bit), return string with letters created from second argument depends on last argument
//
// To compile&link: gcc -o genstr genstr.c genstr.s
// To run:          ./genstr
//
//---------------------------------------------------------------

#include <stdio.h>
#include <stdlib.h>

char* generate_strA(char* s, int c, int n, int inc);

void main( void )
{
	char* buf = malloc(1000);

	printf("As = %s\n",generate_strA(buf,'a',3,0));
	printf("As = %s\n",generate_strA(buf,'c',8,1));
}
