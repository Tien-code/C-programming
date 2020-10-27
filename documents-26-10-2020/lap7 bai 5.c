#include <stdio.h>
void main()
{
    int diem;
	
	printf("so diem duoc nhap la :");
	scanf("%d", &diem);

	if(diem>=75 )
	{printf(" so diem sinh vien loai A la :",diem>=75);}
	else if(diem>=60 && diem<70)
	{printf("so diem sinh vien loai B la :",diem>=60 && diem<70);}
		
	else if(diem>=45 && diem<60)
	{printf("so diem sinh vien loai C la :",diem>=45 && diem<60);}
	
	else if(diem>=35 && diem<45)
	{printf("so diem sinh vien loai D la :",diem>=35 && diem<45);}
     
    else 
	printf(" so diem sinh vien loai E :", diem<35);

}
