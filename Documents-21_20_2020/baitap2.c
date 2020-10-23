#include <stdio.h>
int main(void)
{
	int Dolar;
	int VND;
	printf("Enter Dolar\n");
	scanf("%d",&Dolar);
	VND = Dolar * 16689;
	printf("vay %dDolar = %dVND", Dolar, VND);
}
