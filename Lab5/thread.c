#include <pthread.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
int a[10];
int count = 0;
void *producer()
{
    while (1)
    {
        if (count >= 10)
        {
            sleep(2);
        }

        a[count] = rand() % 100;
        printf("produce Item %d\n", a[count]);
        count++;
        // sleep(1);
    }
}
void *consumer()
{
    while (1)
    {
        if (count <= 0)
        {
            sleep(2);
        }
        int y;
        y = a[count - 1];
        printf("Consumed Item %d\n", y);
        count--;
        // sleep(1);
    }
}

int main()
{
    pthread_t t1, t2;
    pthread_create(&t1, NULL, &producer, NULL);

    pthread_create(&t2, NULL, &consumer, NULL);

    pthread_join(t2, NULL);
    pthread_join(t1, NULL);
    return 0;
}