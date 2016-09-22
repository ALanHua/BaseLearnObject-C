//
//  Interview03.c
//  InterviewCodes
//
//  Created by yhp on 16/9/23.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#include "Interview03.h"

/*
 写一个函数，求两个整数的之和，要求在函数体内不得使用＋、－、×、÷。
 */
int addNonRecursive(int num1,int num2)
{
    int sum = 0;
    int carry = 0;
    
    do {
        sum = num1 ^ num2;
        carry = (num1 & num2)<<1;
        num1 = sum;
        num2 = carry;
    } while (num2 != 0);
    return num1;
}
int addRecursive(int num1,int num2)
{
    int sum;
    int carry;
    if (num2 == 0) {
        return num1;
    }
    sum = num1 ^ num2;
    carry = (num1 & num2)<<1;
    return addRecursive(sum, carry);
}

void interView03Test(void)
{
    printf("%d\n",addNonRecursive(100, 212887));
    printf("----------\n");
    printf("%d\n",addRecursive(100, 212887));
}
