//---------------------------------------------------------------
// (64 bit), return index of maximal argument or zero if there is more than one of them
//
// To compile&link: gcc -o max_ind max_ind.c max_ind.s
// To run:          ./max_ind
//
//---------------------------------------------------------------

#include <stdio.h>

int max_indA(int a, int b, int c, int d);

void main( void )
{
   printf("As = %d\n",max_indA(6,5,3,2));
   printf("As = %d\n",max_indA(1,5,3,6));
   printf("As = %d\n",max_indA(6,6,3,2));
   printf("As = %d\n",max_indA(1,5,3,3));
}
