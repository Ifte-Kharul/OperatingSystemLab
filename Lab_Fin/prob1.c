#include <pthread.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <time.h>
int a[10];
int count = 0;
int r_sum = 0;
int s_sum = 0;
void *raju()
{
    for (int i = 0; i < 5; i++)
    {
        srand(time(0));

        int rs = (rand() % 6) + 1;
        r_sum += rs;
    }
}
void *saju()
{
    for (int i = 0; i < 5; i++)
    {
        srand(time(0));

        int ss = (rand() % 6) + 1;
        s_sum += ss;
    }
}

int main()
{
    pthread_t r, s;
    // int tie = 1;
    // if (r_sum != s_sum)
    // {
    //     tie = 0;
    // }
    // else
    // {
    //     printf("it is tie\n");
    //     r_sum = 0;
    //     s_sum = 0;
    //     tie = 1;
    // }
    while (r_sum == s_sum)
    {
        r_sum = 0;
        s_sum = 0;
        pthread_create(&r, NULL, &raju, NULL);

        pthread_create(&s, NULL, &saju, NULL);

        pthread_join(r, NULL);
        pthread_join(s, NULL);
    }
    if (r_sum > s_sum)
    {
        printf("Raju is winner\n");
    }
    else if (r_sum < s_sum)
    {
        printf("saju is winner\n");
    }

    return 0;
}