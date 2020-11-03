#include <stdio.h>
#include <stdlib.h>
void main()
{
    char  student[5][150];
    int i;
    printf("Nhap ten hoc sinh vao bang danh sach sau:\n");
    for (i=0; i<5; i++) {
        printf("\nTen hoc sinh so %d là:", i+1);
        scanf("%s",student[i]);
    }
    for (i=0; i<5; i++) {
        printf("\n Hoc sinh so %d là %s", i+1, student[i]);
    }
    printf("\n");
}
