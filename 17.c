#include <stdio.h>
#include <stdlib.h>

void main()
{
	int n1, n2, i;
	printf("nhap vao so thu nhat : ");
	scanf("%d",&n1);
	 
	printf(" nhap vao so thu 2 : ");
	scanf("%d",&n2);
	
	for(i=n1;i<=n2;i++)
	{
		if(i%50==0)
		printf("cac so chia het cho 50 :%d\n ",i);
	}
	
}
