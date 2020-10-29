#include <stdio.h>
void main()
{
	int sum = 0, num1, num2, num;
	sum=0;
	printf("nhap vao so thu nhat:");
	scanf("%d",&num1);
	
	printf("nhap vao so thu hai:");
	scanf("%d",&num2);
	
	for(num=num1;num<=num2;num++)
    {
		if(num%2!=0)
		{
			sum = sum+ num;
		}
	}
	printf("tong cua cac so le trong day tren la:%d\n",sum );
}
