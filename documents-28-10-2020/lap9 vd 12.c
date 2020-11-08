#include <stdio.h>
main()
{
	int num;
	for(num=1;num<=100;num++)
	{
		if (num%9==0) continue;
		printf("\t %d",num);

	}
}
