//
//  Interview06.c
//  InterviewCodes
//
//  Created by yhp on 2016/10/7.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#include "Interview06.h"
typedef struct{
    List_head member;
    int data;
}inData;
/*
 用两个栈实现队列
 */
StackQueue* queueCreate(void)
{
    StackQueue* queue = (StackQueue*)malloc(sizeof(StackQueue));
    queue->pIn  = stackCreate();
    queue->pOut = stackCreate();
    return queue;
}

void queueDestory(StackQueue* queue)
{
    stackDestory(queue->pIn);
    stackDestory(queue->pOut);
    free(queue);
}

void queuePush(StackQueue* queue,inData* data)
{
    stackPush(queue->pIn, &data->member);
}

inData* queuePop(StackQueue* queue)
{
    if (queue->pOut->top == NULL) {
        
    }
    return NULL;
}
