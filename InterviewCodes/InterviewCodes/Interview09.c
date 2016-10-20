//
//  Interview09.c
//  InterviewCodes
//
//  Created by yhp on 2016/10/20.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#include "Interview09.h"
/*
    斐波那契数列
            0   n = 0
    fn  ->  1   n = 1
            f(n-1) + f(n-2) n > 1
 */
long long Fibonacci(unsigned int n)
{
    if (n == 0) {
        return 0;
    }
    if (n == 1) {
        return 1;
    }
    return Fibonacci(n-1) + Fibonacci(n-2);
}

long long FibnnacciCycle(unsigned int n)
{
    int result[2] = {0,1};
    if (n < 2) {
        return result[n];
    }
    long long fibonaciOne = 1;
    long long fibonaciTwo = 0;
    long long fibonaciN = 0;
    for (unsigned int i = 2; i <= n; i++) {
        fibonaciN = fibonaciOne + fibonaciTwo;
        fibonaciTwo = fibonaciOne;
        fibonaciOne = fibonaciN;
    }
    return fibonaciN;
}

void interView09Test(void)
{
    printf("Fibonacci(10):%zd\n",Fibonacci(10));
    printf("Fibonacci(10):%zd\n",FibnnacciCycle(10));
}

