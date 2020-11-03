#include <stdio.h>
#include <stdlib.h>

void main()
{
	int so[10], i;
	printf("\nnhap 10 so bat ki : ");

	for(i=0;i<=10;i++)
	
		scanf("%d",&so[i]);
    
    for(i=0;i<=10;i+=2)
    {
	printf("cac so o vi tri chan la : %d ",so[i]);
    }
}
