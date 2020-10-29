#include <stdio.h>
void main()
{
	int i,j,k;
	
	printf("nhap vao so thu 1 :");
	scanf("%d",&i);
	
	printf("\n");
	for(j=1; j<=i;j++)
	{
		printf("\n");
		for(k=0;k<=j;k++)
		{
			printf("%d",k+1);
		}
	}
		printf("\n nhap vao so thu 2 :");
	scanf("%d",&i);
	
	printf("\n");
	
	for(j=i; j>=1; j--)
	{
		printf("\n");
		for(k=0;k<j;k++)
		{
			printf("%d",k+1);
		}
	}
	
}
