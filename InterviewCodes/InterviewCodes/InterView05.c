//
//  InterView05.c
//  InterviewCodes
//
//  Created by yhp on 2016/9/29.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#include "InterView05.h"
#include <stdlib.h>
/*
 输入某个二叉树的前序遍历和中序遍历的结果，请重建二叉树
 example: 前序：{1，2，4，7，3，5，6，8} 和{4，7，2，1，5，3，8，6}
 */

BinaryTreeNode* constructCore(int* startPreOrder,int* endPreOrder,
                          int* startInOrder,int* endInOrder)
{
    
    return NULL;
}

BinaryTreeNode* construct(int* preOrder,int* inOrder,int length)
{
    
    if (preOrder == NULL || inOrder == NULL || length <= 0) {
        return  NULL;
    }
    return constructCore(preOrder,preOrder+length-1,inOrder,inOrder+length-1);
}
