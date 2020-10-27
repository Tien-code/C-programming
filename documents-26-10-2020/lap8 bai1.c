#include <stdio.h>
void main()
{
	int x;
	int y;
	printf("nhap vao so x :");
	scanf("%d", &x);
	printf("nhap vao so y :");
	scanf("%d", &y);
	
	if(x<2000 || x>3000)
	printf(" thoa man so x voi dieu kien da cho ",x<2000 || x>3000 );
	
    if(y>=100 || y<=500)
	printf("\n thoa man so y voi dieu kien da cho ", y>=100 || y<=500);
	
	else
	printf("khong thoa man dieu kien ");
	
}
