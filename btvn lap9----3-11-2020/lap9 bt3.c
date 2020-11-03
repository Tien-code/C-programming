#include <stdio.h>
#include <stdlib.h>
void main()
{
	int Arr[10];
	int i,dem;
	int max, min,sum=0,avg;
	
	printf("nhap vao 10 so bat ki : ");

	for(i=0;i<10;i++)
	{
		scanf("%d",&Arr[i]);
	sum+=Arr[i];
	}
	printf("Tong cac so la : %d",sum);
	
	avg=sum/10;
	printf("\ntrung binh cong cua cac so tren la : %d",avg);
	
	max=Arr[0];
	for(i=0;i<10;i++)
	{
		if(Arr[i]==max)
		dem++;
		if(Arr[i]>max)
        {
		max=Arr[i];
		dem=1; 
		}
		
	}
	printf("\nSo lon nhat la : %d, so lan xuat hien la %d ",max,dem);

	for(i=0;i<10;i++)
	{
	   if(Arr[i]==min)
	   dem++;
	   if(Arr[i]<min)
	   {
	   	   min=Arr[i];
	   	   dem=1;
	   }	
	}	
	printf("\nSo be nhat la : %d, so lan xuat hien la %d",min,dem);
	
	
	
	
}
