//---------------------------------------------------------------
// (64 bit), return index of maximal argument or zero if there is more than one of them
//
// To compile&link: gcc -o count_table count_table.c count_table.s
// To run:          ./count_table
//
//---------------------------------------------------------------

#include <stdio.h>

unsigned long count_tableA(int tab[], int n, int* max);

void main( void )
{
	int tab[] = {2,5,3,5,1};
	int max = 5;

   printf("As = %ld\n",count_tableA(tab,5,&max));
}
