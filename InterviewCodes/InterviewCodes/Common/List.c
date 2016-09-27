//
//  List.c
//  InterviewCodes
//
//  Created by yhp on 2016/9/26.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#include "List.h"
#include <stdlib.h>

void addToTail(ListNode** pHead,int value)
{
    ListNode* pNode = *pHead;
    ListNode* pNew = (ListNode*)malloc(sizeof(ListNode));
    pNew->m_nValue = value;
    pNew->m_pNext = NULL;
    
    if (pNode == NULL) {
        *pHead = pNew;
    }else{
        while (pNode->m_pNext != NULL) {
            pNode = pNode->m_pNext;
        }
        pNode->m_pNext = pNew;
    }
    
}
void removeNode(ListNode** pHead,int value)
{
    if (pHead == NULL || *pHead == NULL) {
        return;
    }
    ListNode* pToBeDelected = NULL;
    if((*pHead)->m_nValue == value) {
        pToBeDelected = *pHead;
        *pHead = (*pHead)->m_pNext;
    }else{
        ListNode* pNode = *pHead;
        while (pNode->m_pNext != NULL && pNode->m_pNext->m_nValue != value) {
            pNode = pNode->m_pNext;
        }
        if (pNode->m_pNext != NULL && pNode->m_pNext->m_nValue == value) {
            pToBeDelected = pNode->m_pNext;
            pNode->m_pNext = pNode->m_pNext->m_pNext;
        }
    }
    
    if (pToBeDelected != NULL) {
        free(pToBeDelected);
    }
}
// 倒着打印链表
void printListReversinglyAndRecursively(ListNode* pHead)
{
    if (pHead != NULL) {
        if (pHead->m_pNext != NULL) {
            printListReversinglyAndRecursively(pHead->m_pNext);
        }
        printf("Reversiving List:%d\n",pHead->m_nValue);
    }
}
// 创建简单单链表
ListNode* creatAList(int nodesCount)
{
    // 创建5个节点
    ListNode* pHead = NULL;
    for (int i = 1; i <= nodesCount; i++) {
        addToTail(&pHead,i);
    }
    return pHead;
}
/*
 从尾到头打印链表
 */
void printListReversinglyAndIteratively(ListNode* pHead)
{
    
}
