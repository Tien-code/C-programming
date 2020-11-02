#include <stdio.h>
#include <stdlib.h>
void main()
{
	printf("What's your name ?\n");
	
	int ten, i,em,Y,N;
	char ans;
	printf("nhap ten crush cua ban vao day : ");
	scanf("%d",&ten);
	
	for(i=1;i<=100;i++)
	{
		printf("fall in love %d\n",i);
	}
	do 
	{
	printf("Do you love me ? ");
	printf("yes or No :");
    scanf("%c",&ans);
    fflush(stdin);
	}	
	while( ans!='y'); 	
	
	printf("cuoi luon em nhe");
	
	
//	duoi day la hinh trai tim 

	int a, b, size = 15;
            for (a = size/2; a <= size; a = a+2)
    {
        for (b = 1; b < size-a; b = b+2)        
            printf(" ");
            
        for (b = 1; b <= a; b++)
            printf("*");
   
        for (b = 1; b <= size-a; b++)
            printf(" ");
         
        for (b = 1; b <= a-1; b++)
            printf("*");
 
        printf("\n");
    }
 
    for (a = size; a >= 0; a--)
    {
        for (b = a; b < size; b++)
            printf(" ");
 
        for (b = 1; b <= ((a * 2) - 1); b++)
            printf("*");
 
        printf("\n");  
    }
	
}
