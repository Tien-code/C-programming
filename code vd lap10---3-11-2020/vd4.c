#include <stdio.h>
#include <stdlib.h>
main()
{
	int a,b,c;
	a=b=c=0;
	printf("\nEnter 1st integer: ");
	scanf("%d",&a);
	
	printf("\nEnter 2st integer: ");
	scanf("%d",&b);
	c= adder(a,b);
	printf("\n \n a &b int main() are :%d, %d",a,b);
	printf("\n\nc int main() is : %d",c);
	
}

adder (int a,int b)
{
	int c;
	c=a+b;
	a*=a;
	b+=5;
	
	printf("\n\n a&b within adder function are :%d,%d",a,b);
	printf("\nc within adder function is : %d",c);
	
	
}




