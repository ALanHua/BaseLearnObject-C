//
//  BinaryTree.c
//  InterviewCodes
//
//  Created by yhp on 2016/9/29.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#include "BinaryTree.h"
#include <stdlib.h>

BinaryTreeNode* addBinaryTreeNode(BinaryTreeNode* pTreeNode,int value)
{
    if (!pTreeNode) {
        pTreeNode = (BinaryTreeNode*)malloc(sizeof(BinaryTreeNode));
        pTreeNode->m_nValue = value;
    }
    
    if (value < pTreeNode->m_nValue){
        pTreeNode->m_pLeft = addBinaryTreeNode(pTreeNode->m_pLeft,value);
    }else if(value > pTreeNode->m_nValue){
        pTreeNode->m_pRight = addBinaryTreeNode(pTreeNode->m_pRight,value);
    }
    
    return pTreeNode;
}

BinaryTreeNode* createABinaryTree(int* values,unsigned int length)
{
    BinaryTreeNode* rootTree = NULL;
    for (int i = 0; i < length; i++) {
        rootTree = addBinaryTreeNode(rootTree,i+1);
    }
    return rootTree;
}
