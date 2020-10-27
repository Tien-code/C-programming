#include <stdio.h>
void main()
{
	printf ("Welcom to Tien's Bank");
	int mathe ,mapin;
	printf ("\nNhap ma the: ");
	scanf ("%d", &mathe);
	printf ("Nhap ma pin: ");
	scanf ("%d", &mapin);
    if (mathe == 12345 && mapin == 12345) 
    {
    	int a;
		printf ("Nhap lua chon cua ban:\n1.Kiem tra so du\n2.Rut tien\n3.Chuyen khoan\n4.Ket thuc chuong trinh\n");
    	scanf ("%d", &a);
    	if (a==1)
    	{
    		int sodu =500;
			printf ("So du cua ban la: %d", sodu);
		}
		else if (a==2)
		{
		    int sotien;
			printf ("Nhap so tien ban muon rut: ");
			scanf ("%d", &sotien);
			if (sotien%50==0 && sotien<400)
			{
			    char ans = 'y';
			 	printf ("Giao dich nay mat phi, ban co muon tiep tuc khong (y or n): ");
				fflush(stdin);
				scanf ("%c", &ans);
				int tienphi = 5;
				int sodu = 500;
				if (ans == 'y')
				{
					printf ("So du con lai la: %d", sodu - sotien - tienphi );
				}
				else 
				    printf ("Cam on ban da su dung dich vu!");
				
			}
			else 
			     printf ("Ban can nhap so tien la boi cua 50 va nho hon 400 trieu");
		}
		else if (a==3)
		{
			int stk;
		    printf ("Nhap so tai khoan nguoi nhan: ");
			scanf ("%d", &stk);
			if (stk == 456)
			{
				int sodu =500;
				int tienchuyen;
				printf ("Nhap so tien muon chuyen: ");
				scanf ("%d", &tienchuyen);
				if (tienchuyen <=500)
				{
				   printf ("So du con lai cua ban la: %d", sodu - tienchuyen);
				}
				else 
				   printf ("Ban can chuyen so tien nho hon 500 trieu");
			}
			else 
			       printf ("So tai khoan khong hop le");
		
		}
		else if (a==4)
		{
			printf ("Cam on ban da su dung dich vu!");
		}
	}
	else 
	    printf ("Ma the hoac ma pin khong dung");
    return 0;
} 
	
	
	
