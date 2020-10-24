#include <stdio.h>
void main()
{
	int a, b,c,d;
	a= 50;
	b= 24;
	c= 68;
	d = a*b+c/2;
	printf("\n the value after a*b+c/2 is: %d" ,d);
	d= a%b;
	printf("\n the value after a mod b is: %d" ,d);
	d = a*b-c;
	printf("\n the value after a*b-c is: %d" ,d);
	d = a/b+c;
	printf("\n the value after a/b+c is: %d" ,d);
	 
	d = a+b*c;
	printf("\n the value after a+b*c is: %d" ,d);
	d = (a+b)*c;
    printf("\n the vablue after (a+b)*c");
	d = a*(b+c+(a-c)*b);
	printf("\n the vablue after a*(b+c+(a-c)*b) is: %d" ,d);
	}
