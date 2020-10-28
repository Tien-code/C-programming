#include <stdio.h>
int main (){
	int num;
	labe11:
		printf("\n Enter a number (1):");
		scanf("%d",&num);
		if(num==1)
		goto Test;
		else
		goto labe11;
		Test:
			printf("All done...");
}
