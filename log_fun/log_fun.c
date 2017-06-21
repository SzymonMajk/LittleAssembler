#include <stdio.h>

/* Function get four parameters:
  we will be looking for number of bits and sum of indexes of bits with value one in the, the number to looking must be send in first parameter (we are counting bits from right to left),
  when second parameter is 2 we return multiplied indexes, if parameter is 1 then we return sum indexes, otherwise we must return 0,
  we use third parameter to return value of first bit from the right which value is equal to one, return -1 means all bits are 0,
  we use fourth parameter to return number of bits whose value is equal to one */
unsigned long fun(unsigned long a, int b, int* pcs, int* count);

void main( void )
{
  int a = -1;
  int b = -1;
  
  printf("Tests for second parameter == 0\n");
    printf("Number = %d, As = %ld, ",6,fun(6,-1,&a,&b));
  printf("pcs = %d, count = %d\n",a,b);
    printf("Number = %d, As = %ld, ",4,fun(4,3,&a,&b));
  printf("pcs = %d, count = %d\n",a,b);
    printf("Number = %d, As = %ld, ",2,fun(2,3,&a,&b));
  printf("pcs = %d, count = %d\n",a,b);
    printf("Number = %d, As = %ld, ",1,fun(1,4,&a,&b));
  printf("pcs = %d, count = %d\n",a,b);
    printf("Number = %d, As = %ld, ",0,fun(0,4,&a,&b));
  printf("pcs = %d, count = %d\n",a,b);
  
    printf("Tests for second parameter == 1\n");
        printf("Number = %d, As = %ld, ",6,fun(6,1,&a,&b));
  printf("pcs = %d, count = %d\n",a,b);
    printf("Number = %d, As = %ld, ",4,fun(4,1,&a,&b));
  printf("pcs = %d, count = %d\n",a,b);
    printf("Number = %d, As = %ld, ",2,fun(2,1,&a,&b));
  printf("pcs = %d, count = %d\n",a,b);
    printf("Number = %d, As = %ld, ",1,fun(1,1,&a,&b));
  printf("pcs = %d, count = %d\n",a,b);
    printf("Number = %d, As = %ld, ",0,fun(0,1,&a,&b));
  printf("pcs = %d, count = %d\n",a,b);
  
    printf("Tests for second parameter == 2\n");
      printf("Number = %d, As = %ld, ",6,fun(6,2,&a,&b));
  printf("pcs = %d, count = %d\n",a,b);
    printf("Number = %d, As = %ld, ",4,fun(4,2,&a,&b));
  printf("pcs = %d, count = %d\n",a,b);
    printf("Number = %d, As = %ld, ",2,fun(2,2,&a,&b));
  printf("pcs = %d, count = %d\n",a,b);
    printf("Number = %d, As = %ld, ",1,fun(1,2,&a,&b));
  printf("pcs = %d, count = %d\n",a,b);
    printf("Number = %d, As = %ld, ",0,fun(0,2,&a,&b));
  printf("pcs = %d, count = %d\n",a,b);
}
