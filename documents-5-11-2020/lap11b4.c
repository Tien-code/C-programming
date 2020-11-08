#include <stdio.h>
#include <stdlib.h>
#include <stdio.h>

void indexMin(int arr[], int size)
{
	int i;
    printf("Array elements are:\n");
    for( i=1; i<=size; i++)
	{
        printf("arr[%d]= ", i);
        scanf("%d", &arr[i]);
    }
    int min=arr[1];
    int vitri=1;
    for( i=1; i<=size; i++) 
	{
        if (min>arr[i])
		{
            min=arr[i];
            vitri = i;
        }
    }
    printf("Gia tri nho nhat = %d\n", min);
    printf("Vi tri phan tu dau tien là arr[%d]\n", vitri);
}

int main()
{
    int arr[11];
    indexMin(arr, 10);
    return 0;
}
