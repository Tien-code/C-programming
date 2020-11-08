#include <stdio.h>
main()
{
	int cnt=0,num;
	do
	{
		printf("\n Enter a number:");
		scanf("%d",&num);
		printf("\n No.is %d",num);
		cnt++;

	}while(num!=0);
	printf("\n The total number entered were %d",--cnt);

}
