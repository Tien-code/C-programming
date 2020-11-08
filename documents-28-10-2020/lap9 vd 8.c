#include <stdio.h>
void main()
{
	int num1,num2;
	num2=0;
	do{
		printf("\n Enter a number:");
		scanf("%d",&num1);
		printf("NO.IS %d",num1);
		num2++;

	}while(num1!=0);
	printf("\n The total numbers entered were %d",--num2);

}
