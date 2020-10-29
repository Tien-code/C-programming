#include <stdio.h>
void main()
{
	int tuoi;
	char ten[99];
	int i;
	printf("nhap ten : ");
	gets(ten);
	
	printf("nhap tuoi : ");
	scanf("%d", &tuoi);
	
	for(i=1; i<=tuoi; i++)
	{
		printf(" %s lan : %d\n ",ten,i);
	}
}
