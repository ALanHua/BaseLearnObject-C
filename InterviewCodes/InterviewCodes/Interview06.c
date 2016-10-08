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
    List_head* pNode;
    inData* pInData;
    inData* pOutData;
    if (isStackEmpty(queue->pOut)) {// 都出栈了
        while (!isStackEmpty(queue->pIn)) {
            pNode = stackPop(queue->pIn);
            pInData = list_emtry(inData, pNode, member);
            stackPush(queue->pOut, &pInData->member);
        }
    }
    pNode = stackPop(queue->pOut);
    pOutData = list_emtry(inData, pNode, member);
    return pOutData;
}
int queuePopDataType(StackQueue* queue)
{
    inData* pOutData;
    pOutData = queuePop(queue);
    return pOutData->data;
}

void interView06Test(void)
{
    StackQueue* queue;
    queue = queueCreate();
    inData d1;
    d1.data = 10;
    queuePush(queue, &d1);
    inData d2;
    d2.data = 20;
    queuePush(queue, &d2);
    inData d3;
    d3.data = 30;
    queuePush(queue, &d3);
    //
    for (int i = 0; i < 3 ; i++) {
        printf("%d ",queuePopDataType(queue));
    }
    printf("\n");
}
