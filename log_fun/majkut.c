/*Szymon Majkut
 * Efekty:
 * Do programu należy dołączyc bibliotekę <stdio.h>, aby możliwe było
 * korzystanie z funkcji printf
 * ------------------------------------------------------------- */

#include <stdio.h>

/*funkcja dostje 4 parametry, dwa wejście wskaźniki wyjście
 * w pierwszym argumencie jak jest jedynka na bicie najmniej znaczacym, to oznacza że w gre wchodzi liczba 1, jak bit
 * najbardziej z lewej to liczba 64 itd... bit sygnalizuje czy liczba z indeksu brana pod uwagę
  drugi argument ma 1 sumowac, jak dwa to mnożyc, inna wartośc zwrocić zero
  trzeci argument pozycja ostatniego bitu, który jest rózny od zera
  czwarty argument liczba bitów, które sa równe jeden
  funkcja ma zwrócic to co miała zrobić z pierwszym argumentem

*/
unsigned long fun(unsigned long a, int b, int* pcs, int* count);

void main( void )
{
  int a = -1;
  int b = -1;
  
  printf("As = %d, ",fun(2,5,&a,&b));
  printf("pcs = %d, count = %d\n",a,b);
}
