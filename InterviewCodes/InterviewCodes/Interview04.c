//
//  Interview04.c
//  InterviewCodes
//
//  Created by yhp on 2016/9/26.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#include "Interview04.h"
#include "List.h"
#include <stdlib.h>
#include <string.h>

void interView04Test(void)
{
    // 创建链表
    ListNode* list;
    list = creatAList(5);
//    printListReversinglyAndRecursively(list);
    printListReversinglyAndIteratively(list);
}
