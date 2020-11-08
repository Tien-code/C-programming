   
   #include <stdio.h>
main()
{
	int so=0;
	while(so<100)
	{
		printf("This goes forever , HELP!!! \n");
		so+=10;
		printf("\n %d", so);
		so-=10;
		printf("\n %d",so);
		printf("\ Ctrl -C will help");
	}
	}
