//
//  pthread_test.c
//  ImageDemo
//
//  Created by Carl on 2017/7/9.
//  Copyright © 2017年 Carl. All rights reserved.
//

#include "pthread_test.h"
#include <pthread.h>
#include <unistd.h>

/*PTHREAD_MUTEX_INITIALIZER 只能用于mutex变量声明时的初始化，声明后的mutex 需要用pthread_mutex_init。。
根本原理：是所有的结构体变量。结构体变量在使用常量进行整体初始化的时候只能在声明的时候进行，不能是声明结束之后。
# define PTHREAD_MUTEX_INITIALIZER \
{ { 0, 0, 0, 0, 0, 0, { 0, 0 } } }
*/

//pthread 相关总结： http://blog.chinaunix.net/uid-21084809-id-2215376.html
//pthread_attr_t http://blog.csdn.net/hudashi/article/details/7709413

static pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
static pthread_cond_t cond = PTHREAD_COND_INITIALIZER;

#define RUN 1
#define STOP 0
int status_pthread1 = STOP;
int status_pthread2 = STOP;

void* my_pthread_func1(void *var)
{
    while (1) {
        pthread_mutex_lock(&mutex);
        while (status_pthread1 == STOP) {
            pthread_cond_wait(&cond, &mutex);
        }
        pthread_mutex_unlock(&mutex);
        break;
    }
    
    {
//     do something
    }
    
    pthread_mutex_lock(&mutex);
    status_pthread2 = RUN;
    pthread_cond_signal(&cond);
    pthread_mutex_unlock(&mutex);
    return NULL;
}

void* my_pthread_func2(void *var)
{
    pthread_mutex_lock(&mutex);
    status_pthread1 = RUN;
    pthread_cond_signal(&cond);
    pthread_mutex_unlock(&mutex);
    
    while (1) {
        pthread_mutex_lock(&mutex);
        while (status_pthread2 == STOP) {
            pthread_cond_wait(&cond, &mutex);
        }
        pthread_mutex_unlock(&mutex);
        break;
    }
    
    return NULL;
}


void my_pthread_test()
{
    int ret;
    pthread_t my_pthread_id;
    ret = pthread_create(&my_pthread_id, NULL, my_pthread_func1, NULL);
    if (ret != 0)
    {
        printf("ERROR: pthread_create 1 failed: %d\n", ret);
    }
    pthread_t my_pthread_id2;
    ret = pthread_create(&my_pthread_id2, NULL, my_pthread_func2, NULL);
    if (ret != 0)
    {
        printf("ERROR: pthread_create 2 failed: %d\n", ret);
    }
    
    
    pthread_join(my_pthread_id, NULL);
    pthread_join(my_pthread_id2, NULL);
    
}



