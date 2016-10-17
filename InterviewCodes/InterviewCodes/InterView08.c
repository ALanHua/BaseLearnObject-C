//
//  InterView08.c
//  InterviewCodes
//
//  Created by yhp on 2016/10/17.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#include "InterView08.h"
/*
 旋转数组中的最小数字
 输入一个递增排序的数组的一个旋转数组，输出最小元素
 如{3，4，5，1，2} 是{1，2，3，4，5}的旋转数组
 */
static int minInOrder(int* numbers,int index1,int index2)
{
    int result = numbers[index1];
    for (int i = index1 + 1; i <= index2; i++) {
        if (result > numbers[i]) {
            result = numbers[i];
        }
    }
    return result;
}
static int min(int* numbers,int length)
{
    if (numbers == NULL || length <= 0) {
        return -1;
    }
    int index1 = 0;
    int index2 = length - 1;
    int indexMid = index1;
    while (numbers[index1] >= numbers[index2]) {
        if (index2 - index1 == 1) {
            indexMid = index2;
            break;
        }
        indexMid = (index1 + index2) / 2;
        // 特例
        if(numbers[indexMid] == numbers[index1]
        && numbers[indexMid] == numbers[index2]){
            return minInOrder(numbers,index1,index2);
        }
        if (numbers[indexMid] >= numbers[index1]) {
            index1 = indexMid;
        }else if (numbers[indexMid] <= numbers[index2]){
            index2 = indexMid;
        }
    }
    return numbers[indexMid];
}

void interView08Test(void)
{
    int arr[] = {3,4,5,1,2};
    printf("min:%d\n",min(arr,sizeof(arr) / sizeof(int)));
    int arr1[] = {1,0,1,1,1};
    printf("min:%d\n",min(arr1,sizeof(arr1) / sizeof(int)));

}
