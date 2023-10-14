#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
int main()
{
    int pid1 = fork();
    if (pid1 == 0)
    {
        printf("this is child %d", getpid());
        }

    if (pid1 > 0)
    {
        sleep(2);
        printf("this is parent %d", getpid());
    }
    sleep(10);
    return 0;
}