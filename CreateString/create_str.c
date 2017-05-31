//---------------------------------------------------------------
// (64 bit), return maximal differention between arguments
//
// To compile&link: gcc -o create_str create_str.c create_str.s
// To run:          ./create_str
//
//---------------------------------------------------------------

#include <stdio.h>
#include <stdlib.h>

char* create_strA(char* s, char* a, char* b);

void main( void )
{
	char* buf = malloc(1000);

	printf("As = %s\n",create_strA(buf,"aa","bb"));
	printf("As = %s\n",create_strA(buf,"niezle"," 1234 "));
}
