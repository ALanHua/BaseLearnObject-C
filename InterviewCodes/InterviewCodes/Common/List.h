//
//  List.h
//  InterviewCodes
//
//  Created by yhp on 2016/9/26.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#ifndef List_h
#define List_h

#include <stdio.h>
typedef struct ListNode
{
    int                 m_nValue;
    struct ListNode*    m_pNext;
}ListNode;

void addToTail(ListNode** pHead,int value);
void printListReversinglyAndRecursively(ListNode* pHead);
ListNode* creatAList(int nodesCount);
#endif /* List_h */
