#include <stdio.h>
main()
{
int x;
char i,ans;
i ='Yeu em';
do{
x=0;
ans='y';
printf("\n Enter sequence of character:");
do{
	i=getchar();
	x++;

}	while(i !='\n');
i='Yeu em';
printf("\n Number of characters entered is: %d",--x);
printf("\n More sequences (Y/N)?");
ans=getch();
}while (ans=='Y'||ans=='Y');
}
