//
//  main.m
//  InterviewCodes
//
//  Created by yhp on 16/9/20.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Interview01.h"
#include "interview02.h"
#include "Interview03.h"
#include "Interview04.h"
#include "Interview06.h"
#include "Interview07.h"
#include "InterView08.h"
#include "Interview09.h"

void showAaary(int* array,int length)
{
    for (int i = 0; i < length; i++) {
        printf("%d ",array[i]);
    }
    printf("\n");
}

void bubleSort(int* array,int length)
{
    for (int i = 0; i < length; i++) {
        for (int j = 0; j < length - 1 - i; j++) {
            if (array[j + 1] < array[j]) {
                int temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }
        }
    }
}

/**
 冒泡排序优化
 @param array 数组
 @param length
 */
void bubleSort2(int* array,int length)
{
    bool flag = false;
    for (int i = 0; i < length; i++) {
        for (int j = 0; j < length - 1 - i; j++) {
            if (array[j + 1] < array[j]) {
                flag = true;
                int temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }
        }
        if (!flag) {
            break;
        }
    }
}



int main(int argc, const char * argv[]) {
    
//    interView09Test();
    int array[] = {9,2,4,8,7,5,1,30,8};
    int length = sizeof(array) / sizeof(int);
    bubleSort2(array,length);
    showAaary(array,length);
    return 0;
}
