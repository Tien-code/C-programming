#include <stdio.h>
main()
{
	int so1,so2;
	for (so1=1,so2=0;so1<=100;so1++)
	{
		printf("Enter %d so2:",so1);
		scanf("%d",&so2);
		if(so2==100)break;
	}
}
