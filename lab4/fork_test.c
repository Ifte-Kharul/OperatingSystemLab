#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
int main()
{

    // if ((fork() && fork()) || fork())
    //     printf("t\n");
    // printf("out\n");

    int a = 100;
    printf("%d\n", ++a);
    int id1 = fork();
    int id2 = fork();
    int id3 = fork();
    printf("%d\n", a);
    return 0;
}