#include <stdio.h>
#include <stdlib.h>
int rut_tien(int a, int so_du)
{
	return 1;
}

int chuyen_tien(int b,int so_du)
{
	return 2;
}

int so_du()
{
	return 3;
}

int Exit()
{
	return 4;
}

void main()
{
	int mapin=12345, mathe=12345,i=1,count,ans,Y,N;
	int menu;
	count=1;
	double so_du=200000;
	int a,b;
	
	
	printf("\t\t***** Chao mung ban den voi ATM*****\t\t");
	printf("\n");
	printf("\nnhap vao ma the cua ban: \n");
	scanf("%d",&mathe);
	
	printf("\nNhap vao ma pin cua ban: \n");
	scanf("%d",&mapin);
	
	if(mapin!=12345)
	{
		do
		{
		printf("ma pin khong hop le moi nhap lai: %d\n",i);
		scanf("%d",i++);
	    }while(i<5);
	}
	else
        printf("ban nhap dung moi ban chon menu : ");
        
        

	printf("1.rut_tien, 2.chuyen_khoan, 3.so_du, 4.Exit\n");
	printf("chon\n");
	scanf("%d",&i);
	
	switch(i)
	{
		case 1 :
			
			printf("So tien ban muon giut la: \n");
			scanf("%d",&a);
			if(a<so_du)
			{
				printf("\n rut tien thanh cong: %d",so_du-a);
			}
			else
			{
			   printf("\nSo tien ban muon rut khong hop le ! ");
			}
			so_du=so_du-a;
			printf("Cam on ban da su dung chuong trinh cua chung toi !");
			break;
			
		case 2 :
			printf("So tien ban muon chuyen la: ");
			scanf("%d",&b);	
			printf("giao dich nay mat phi 1000 ban co muon tiep tuc?\n");
			printf("Y/N: ");
			scanf("%s", &ans);
			
		
			if( ans==Y)
				{
				printf("\nSo tien ban chuyen khong hop le !");
				}
				else
				
				printf("\nChuyen tien %d thanh cong \n",so_du-b-1000);
			
			printf("Cam on ban da su dung chuong trinh cua chung toi !");
			break;
				
			
		case 3 :
			printf("So tien con lai cua ban la: %d",so_du);	
			printf("Cam on ban da su dung chuong trinh cua chung toi !");
			break;
			
		case 4 :
			printf("Cam on ban da su dung chuong trinh cua chung toi !");	
	}
	
}


