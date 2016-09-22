//
//  interview02.c
//  InterviewCodes
//
//  Created by yhp on 16/9/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#include "interview02.h"

/*
    实现一个函数，将字符串中的空格都替换成%20
    example: We are happy ---> We%20are%20happy
 */
void replaceBlank(char string[],int length)
{
    int originalLength = 0;
    int newLength = 0;
    int numberOfBlank = 0;
    int indexOforiginal = 0;
    int indexOfnew = 0;
    int i = 0;
    if (string == NULL || length <= 0)  {
        perror("NULL str");
        return;
    }
    
    while (string[i] != '\0') {
        ++originalLength;
        if (string[i] == ' ') {
            ++numberOfBlank;
        }
        ++i;
    }
    newLength = originalLength + 2 * numberOfBlank;
    // 检查长度,防止数组越界
    if(newLength > length){
        perror("overflow");
        return;
    }
    indexOforiginal = originalLength;
    indexOfnew = newLength;
    
    while (indexOforiginal >= 0 && indexOfnew > indexOforiginal) {
        if (string[indexOforiginal] == ' ') {
            string[indexOfnew--] = '0';
            string[indexOfnew--] = '2';
            string[indexOfnew--] = '%';
        }else{
            string[indexOfnew--] = string[indexOforiginal];
        }
        indexOforiginal--;
    }
}
#define LENGTH   100
void interView02Test(void)
{
    char str[LENGTH] = "we are happy";
    replaceBlank(str, LENGTH);
    puts(str);
}
