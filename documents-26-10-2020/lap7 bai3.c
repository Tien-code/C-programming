#include <stdio.h>
void main()
{
	int e=50;
	int h=100;
	int a; 
	int b;
	printf("nhap vao so a: ");
	scanf("%d",&a);
	printf("nhap vao so b: ");
	scanf("%d",&b);
	if(a - b ==e && a -b ==h)
	{printf("hieu bang gia tri e = 50");}
	else if ( a- b ==h)
	{printf("hieu bang gia tri h = 100");}
	else
	printf("hieu khong bang bat ki gia tri nao");
}
