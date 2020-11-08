#include <stdio.h>
#include <stdlib.h>
int swap(int *a, int *b);

int main()
{
	int i,j;
    int arr[5];
	printf("Nhap vao 5 so ngau nhien ");
	for(i=1;i<=5;i++)
	{
		scanf("%d",&arr[i]);
	}
	printf("%d", arr[i]);
    swap(&arr[j],&arr[i]);
    printf("day so duoc dao nguoc lai la: %d,%d,%d,%d,%d",arr[5],arr[4],arr[3],arr[2],j);
    getch();
    return 0;
}
 int swap(int *a, int *b)
 {
 	int teamp;
 	teamp = *a;
 	*a=*b;
 	*b=teamp;
}
 
 
 
 
