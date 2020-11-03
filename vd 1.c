#include <stdio.h>
#include <stdlib.h>
main()
{
   incre();
   incre(); 
   incre();
}  
   incre()
   {
   	static char var =65;
   	printf("\n The character stored in var is %c ",var++);
   }
   
   
