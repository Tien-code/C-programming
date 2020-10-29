#include <stdio.h>
void main()
{
	int i,j,k;
	
	printf("nhap vao 1 so");
	scanf("%d",&i);
	
	printf("\n");
	
	for(j=1; j<=i; j++)
	{
		printf("\n");
		for(k=0;k<j;k++)
		{
			printf("*");
		}
	}
	
}
