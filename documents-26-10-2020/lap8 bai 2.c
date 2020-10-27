#include <stdio.h>
int main ()
{
	char chucai= 'A';
	printf ("Nhap vao 1 chu cai: ");
	scanf ("%c", &chucai);
	switch (chucai)
	{
     case 'A':
        printf ("Ngon ngu lap trinh Ada");
        break;
	 case 'B':
	 	 chucai = 'B';
	     printf ("Ngon ngu lap trinh Basic");
		 break;	
     case 'C':
     	 chucai = 'C';
     	 printf ("Ngon ngu lap trinh COBOL");
     	 break;
     case 'D':
     	 chucai = 'D';
     	 printf ("Ngon ngu lap trinh dBase III");
     	 break;
     case 'F':
     	 chucai = 'F';
     	 printf ("Ngon ngu lap trinh Fortran");
     	 break;
     case 'P':
     	 chucai = 'P';
     	 printf ("Ngon ngu lap trinh Pascal");
     	 break;
     case 'V':
     	 chucai = 'V';
     	 printf ("Ngon ngu lap trinh Visual C++");
     	 break;
    default:
    	 printf ("Error");
	}
	return 0;
}
