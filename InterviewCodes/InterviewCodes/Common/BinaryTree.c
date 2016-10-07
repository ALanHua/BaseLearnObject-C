//
//  BinaryTree.c
//  InterviewCodes
//
//  Created by yhp on 2016/9/29.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#include "BinaryTree.h"
#include <stdlib.h>

#define BINARYTREE_MAX(a,b)  ((a) > (b) ? (a) : (b))
// 二叉树添加节点数据
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
// 二叉树深度 1根节点为空--0,2根节点左右为节点为空--1,3其他-MAX(left,right) + 1
unsigned int depthOfTree(BinaryTreeNode* pRootNode)
{
    unsigned int leftDepth = 0;
    unsigned int rightDepth = 0;
    
    if (pRootNode == NULL) {
        return 0;
    }
    if (!pRootNode->m_pLeft && !pRootNode->m_pRight) {
        return 1;
    }
    leftDepth = depthOfTree(pRootNode->m_pLeft);
    rightDepth = depthOfTree(pRootNode->m_pRight);
    
    return BINARYTREE_MAX(leftDepth,rightDepth) + 1;
}

// 简单创建一颗树
BinaryTreeNode* createABinaryTree(int* values,unsigned int length)
{
    BinaryTreeNode* rootTree = NULL;
    for (int i = 0; i < length; i++) {
        rootTree = addBinaryTreeNode(rootTree,i+1);
    }
    return rootTree;
}







