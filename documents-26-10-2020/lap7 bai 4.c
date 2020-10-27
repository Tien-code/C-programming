#include <stdio.h>
void main()
{
	printf(" chao mung ban den voi cong ty Montek");
	int A= 300;
	int B= 250;
	int loai_khac=100;
	int capsinhvien, soluong;
	printf(" \n nhap so luong : ");
	scanf("%d", &soluong);
	printf("chon cap nhan vien:\n 1.Cap A\n2.CapB\n3.cap khac\n");
	scanf("%d", &capsinhvien);
	if(capsinhvien==1)
	{
	printf("so luong cua cong nhan loai A la :%d",soluong +A );
	}
	else if (capsinhvien)
	{printf("so luong cua cong nhan loai B la :%d",soluong+B );}
	else 
	printf("nhung cong nhan loai khacla :%d",soluong+100);
}
