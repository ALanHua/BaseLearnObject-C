//
//  Stack.c
//  InterviewCodes
//
//  Created by yhp on 2016/9/27.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#include "Stack.h"

void initStack(Stack* s)
{
    s->top = NULL;
}

void stackPush(Stack* s,List_head* p)
{
    p->next = s->top;
    s->top = p;
}

List_head* stackPop(Stack* s)
{
    List_head* p = s->top;
    s->top = p->next;
    return p;
}

bool isStackEmpty(Stack* s)
{
    return s->top == NULL;
}

Stack* stackCreate(void)
{
    Stack* s = (Stack*)malloc(sizeof(Stack));
    initStack(s);
    return s;
}

void stackDestory(Stack* s)
{
    free(s->top);
    free(s);
}

typedef struct{
    List_head member;
    int data;
}stactTest;

void stackMoudleTest(void)
{
    Stack s;
    initStack(&s);
    // 创建元素
    stactTest a1,a2,a3;
    List_head* node;
    stactTest* t;
    a1.data = 10;
    a2.data = 20;
    a3.data = 30;
    stackPush(&s, &a1.member);
    stackPush(&s, &a2.member);
    stackPush(&s, &a3.member);
    while (!isStackEmpty(&s)) {
        node = stackPop(&s);
        t = list_emtry(stactTest,node,member);
        printf("YHP--data:%d\n",t->data);
    }
}




