#include <stdio.h>
#include <stdlib.h>
void main()
{
	printf("wellcome to Tien bank \n");
	char ans='y';
	int ma_the= 12345;
	int ma_pin= 12345;
	int count=0;
	int ok=0;
	
	printf("moi ban nhap ma the vao :");
	scanf("%d",&ma_the);
	
	printf("ma pin cua ban la :");
	scanf("%d",&ma_pin);
    
	if(ma_the ==12345 , ma_pin==12345 )
	{
		printf(" 01_Rut_tien , 02_so_du , 03_chuyen_tien , 04_ket_thuc ");
	}
	else
	{
		do
		{
			printf("moi ban nhap lai : ");
			scanf("%d",&ma_pin);
			if(ma_pin==12345)
			{
				printf("ma pin chinh xac !\n");
				printf(" 01_Rut_tien , 02_so_du , 03_chuyen_tien , 04_ket_thuc");
			}
			break;
		}
		while (count<=1 && ok==0);
		if(count==1)
		{
		printf("\nThe cua ban bi khoa !");
	    }
	    else if (count<=1)
		printf(" \n");
		printf("the ban bi khoa");
	
	}

	
	
	
	
	
	
}
