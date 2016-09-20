//
//  Interview01.c
//  InterviewCodes
//
//  Created by yhp on 16/9/20.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#include "Interview01.h"

/*
 1,在一个二维数组中，每一行都按照从左到右顺序递增排序，每一列都按照从上到下顺序递增排序，输入一个这样的二维数组及一个整数,判断数组中是否含有这个整数
     example:
        1  2  8  9 
        2  4  9  12
        4  7  10 13
        6  8  11 15         7
 */
bool find(int* matrix,int rows,int columns,int number)
{
    bool found  = false;
    int  row    = 0;
    int  column = columns - 1;
    if (matrix != NULL && rows > 0 && columns > 0) {
        while (row < rows && column > 0) {
            if (matrix[row* columns + column] == number) {
                found = true;
                break;
            }else if(matrix[row* columns + column] > number){
                column--;
            }else{
                row++;
            }
        }
        
    }
    
    return found;
}
#define ROWS    4
#define COLUMNS 4
void interview01Test(void)
{
    int arr[ROWS*COLUMNS] = {
        1,  2,  8,  9,
        2,  4,  9,  12,
        4,  7,  10, 13,
        6,  8,  11, 15
    };
    int number1 = 7;
    int number2 = 5;
    bool result = false;
    result = find(arr,ROWS,COLUMNS,number1);
    printf("number1:%d\n",result);
    result = find(arr,ROWS,COLUMNS,number2);
    printf("number2:%d\n",result);
}



