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

#define list_emtry(type,pos,member) \
(type*)((char*)pos-(unsigned long)(&((type*)0)->member))
Stack* stackCreate(void);
void stackDestory(Stack* s);
void initStack(Stack* s);
void stackPush(Stack* s,List_head* p);
List_head* stackPop(Stack* s);
bool isStackEmpty(Stack* s);

//void stackMoudleTest(void);
#endif /* Stack_h */
