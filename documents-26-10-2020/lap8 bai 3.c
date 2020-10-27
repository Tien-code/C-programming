#include <stdio.h>
int main ()
{
	int a, b, c;
	printf ("Nhap vao so a:");
	scanf ("%d", &a);
	printf ("Nhap vao so b:");
	scanf ("%d", &b);
	printf ("Nhap vao so c:");
	scanf ("%d", &c);
	if (a>b && a>c)
      printf ("Gia tri lon nhat la: a");
    else if (b>a && b>c)
	   printf ("Gia tri lon nhat la: b");
    else 
        printf ("Gia tri lon nhat la c");
	return 0;
}
