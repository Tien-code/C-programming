#include <stdio.h>
int main (void)
{
int PI = 3.14;
int bankinh;
int chieucao;
int thetich;
printf("nhap vao ban kinh");
scanf("%d", &bankinh);
printf("nhap vao chieu cao");
scanf("%d", &chieucao);
thetich = PI * bankinh * bankinh * chieucao;
printf("thetich%d", thetich);
}
