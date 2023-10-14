#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
int sum(int n)
{
    return (n * (n + 1)) / 2;
}
long int fact(int n)
{
    if (n >= 1)
        return n * fact(n - 1);
    else
        return 1;
}
int main()
{
    int a, pid1;

    scanf("%d", &a);
    int pid = fork();
    if (pid > 0)
    {
        printf("this is parent of PID: %d\n", getpid());
        pid1 = fork();
        if (pid1 == 0)
        {

            printf("this is child with pid %d and parent id %d\n", getpid(), getppid());
            printf("Sum of 1 to N positive Numbers: %d\n", sum(a));
        }
        sleep(1);
        if (pid1 > 0)
            printf("Done\n");
    }
    if (pid == 0)
    {

        printf("this is child with pid %d and parent id %d\n", getpid(), getppid());
        printf("Factorial of N is: %ld\n", fact(a));
    }
}