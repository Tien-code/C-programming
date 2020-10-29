#include <stdio.h>
 main()
{
	int n,i,j;

	printf("ban cuu truong : ");
	scanf("%d",&n);
    for(i=1;i<=10;i++)
   {
   	j=n*i;
   	printf(" \t%d * %d =%d \n", n, i, j);
	}
}

