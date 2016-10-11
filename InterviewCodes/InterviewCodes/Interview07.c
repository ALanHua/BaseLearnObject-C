//
//  Interview07.c
//  InterviewCodes
//
//  Created by yhp on 2016/10/10.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#include "Interview07.h"

/*
 实现一个快速排序
 */
void sortAges(int ages[],int length)
{
    if (ages == NULL || length <= 0) {
        return;
    }
    const int oldestAge = 99;
    int timesOfAge[oldestAge + 1];
    int i,j;
    
    for (i = 0; i <= oldestAge; i++) {
        timesOfAge[i] = 0;
    }

    for (i = 0; i < length; i++) {
        int age = ages[i];
        if (age > oldestAge || age < 0) {
            return;
        }
        ++timesOfAge[age];
    }
    // 排序
    int index = 0;
    for (i = 0; i <= oldestAge; i++) {
        for (j = 0; j < timesOfAge[i]; j++) {
            ages[index] = i;
            ++index;
        }
    }
}

void interView07Test(void)
{
    int arr [] = {4,5,1,9,2,9,4,2,3};
    int length = sizeof(arr) / sizeof(int);
    sortAges(arr,length);
    for (int i = 0; i < length; i++) {
        printf("%d ",arr[i]);
    }
    printf("\n");
}

