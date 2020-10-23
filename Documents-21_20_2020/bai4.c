#include <stdio.h>
int main(void)
{
int chieucao;
int canhday;
int dientich;
	printf("chieucao tamgiac/n");
	scanf("%d", &chieucao);
	
	printf("canhday tamgiac/n");
	scanf("%d", &canhday);
	
	dientich = canhday * chieucao * 1/2;
	printf("%d * %d * 1/2 = %d\n", chieucao, canhday, dientich);
}
