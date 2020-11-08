#include <stdio.h>
#include <stdlib.h>

void mmain()
{
	char str1[15] = "NEW YORK";
	char str2[15] = "Washington";
	char chr = 'a', *loc;

	
	loc = strchr(str1, chr);
	
	if(loc != NULL)
	printf("%c occurs in %s\n",chr, str1);
	else
	printf("%c does not occur in %s\n",chr, str1);
	
	loc = strchr(str2, chr);
	if(loc != NULL)
	printf("%c occurs in %s\n",chr, str2);
	else
	printf("%c does not occur in %s\n",chr, str2);
	getch();
	
}
