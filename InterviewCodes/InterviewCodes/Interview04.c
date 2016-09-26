//
//  Interview04.c
//  InterviewCodes
//
//  Created by yhp on 2016/9/26.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#include "Interview04.h"
/*
从尾到头打印链表
 */
void printListReversinglyAndIteratively(ListNode* pHead)
{
    
}

void printListReversinglyAndRecursively(ListNode* pHead)
{
    if (pHead != NULL) {
        if (pHead->m_pNext != NULL) {
            printListReversinglyAndRecursively(pHead->m_pNext);
        }
        printf("Reversiving List:%d\n",pHead->m_nValue);
    }
}
