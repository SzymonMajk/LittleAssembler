//---------------------------------------------------------------
// (64 bit), return maximal differention between arguments
//
// To compile&link: gcc -o maxdiff maxdiff.c maxdiffa.s
// To run:          ./maxdiff
//
//---------------------------------------------------------------

#include <stdio.h>

int max_diff(int a, int b, int c, int d)
{
	int tmp = a;

	if(a < b) {
		a = b;
		b = tmp;
	}

	if (b > c)	{
		b = c;
	}
	if (b > d)	{
		b = d;
	}

	if (a < c)	{
		a = c;
	}
	if (a < d)	{
		a = d;
	}

	return a-b;			
}

int max_diffA(int a, int b, int c, int d);

void main( void )
{
   printf("C = %d As = %d\n",max_diff(1,5,3,2),max_diffA(1,5,3,2));
   printf("C = %d As = %d\n",max_diff(2,1,3,5),max_diffA(2,1,3,5));
   printf("C = %d As = %d\n",max_diff(2,5,1,3),max_diffA(2,5,1,3));
   printf("C = %d As = %d\n",max_diff(2,5,3,1),max_diffA(2,5,3,1));

   printf("C = %d As = %d\n",max_diff(5,2,3,1),max_diffA(5,2,3,1));
   printf("C = %d As = %d\n",max_diff(2,5,3,1),max_diffA(2,5,3,1));
   printf("C = %d As = %d\n",max_diff(2,3,5,1),max_diffA(2,3,5,1));
   printf("C = %d As = %d\n",max_diff(2,1,3,5),max_diffA(2,1,3,5));
}
