//
//  Sort.c
//  InterviewCodes
//
//  Created by yhp on 2016/10/11.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#include "Sort.h"

int randomInRange(int start,int end)
{
    if (end > start) {
        srand((unsigned int)time(NULL));
        return start + rand() % (end -start);
    }
    return start;
}

void swap(int* a,int* b)
{
    int temp;
    temp = *a;
    *a = *b;
    *b = temp;
}

int partition(int data[],int length,int start,int end)
{
    // 1, 错误检查
    if(data == NULL || length <= 0 || start < 0 || end >= length){
        return -1;
    }
    int index = randomInRange(start, end);
    swap(&data[index], &data[end]);// 将随机数移到最右边
    int small = start - 1;
    for (index = start; index < end; index++) {
        if (data[index] < data[end]) {
            ++small;
            if(small != index){
                swap(&data[index], &data[small]);
            }
        }
    }
    ++small;
    swap(&data[small], &data[end]);
    return small;
}

void QuickSort(int data[],int length,int start,int end)
{
    if (start == end) {
        return;
    }
    int index = partition(data,length,start,end);// 中间数
    if(index > start){
        QuickSort(data,length,start,index - 1);
    }// 左边排序
    if (index < end) {
        QuickSort(data, length, index + 1, end);
    }// 右边排序
}
