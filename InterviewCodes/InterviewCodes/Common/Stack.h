//
//  Stack.h
//  InterviewCodes
//
//  Created by yhp on 2016/9/27.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#ifndef Stack_h
#define Stack_h

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

typedef struct list{
    struct list* next;
}List_head;

typedef struct {
    List_head* top;
}Stack;

typedef struct{
    void** buttom;
    int top;
    int maxSize;
}arrayStack;
// 数组
arrayStack* arrayStackCreate(int maxSize);
void arrayStackDestory(arrayStack* s);
bool isArrayStackEmpty(arrayStack* s);
void* arrayStackPush(arrayStack* s,void* data);
void* arrayStackPop(arrayStack* s);
// 链表
#define list_emtry(type,pos,member) \
(type*)((char*)pos-(unsigned long)(&((type*)0)->member))
Stack* stackCreate(void);
void stackDestory(Stack* s);
void initStack(Stack* s);
void stackPush(Stack* s,List_head* p);
List_head* stackPop(Stack* s);
bool isStackEmpty(Stack* s);

#endif /* Stack_h */
