#include <stdio.h>
#include <stdlib.h>
void main()
{
	int x,y,*px, *py;
	px=&x;
	
	py=&y;
	x=15;y=20;
	printf("x=%d, y=%d \n",x,y);
	swap(px, py);
	printf("\nafter interchanging x=%d , y=%d \n",x ,y);
}
swap(int *u, int *v)
{
	int temp;
	temp=*u;
	*u = *v;
	*v= temp;
}
