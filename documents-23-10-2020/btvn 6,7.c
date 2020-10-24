#include <stdio.h>
void main()
{
	int a;
	float d;
	char ch, name[40];
	printf("please enter the data \n");
	scanf("%d %f %c %s",&a, &d, &ch, name);
	printf("\nThe vablues accepted are: %d,%f, %c, %s",a,d,ch,name);
}
