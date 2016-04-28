//
//  main.m
//  Block基本概念
//
//  Created by yhp on 16/1/31.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

void printRose(int num)
{
    for (int i = 0; i<num; i++) {
        printf(" {@} \n");
        printf("  |  \n");
        printf(" \\|/ \n");
        printf("  | \n");
    }
}

int sum(int value1,int value2)
{
    return value1 + value2;
}

int main(int argc, const char * argv[])
{
    /*
//    printRose();
//    printRose();
    
//    void(*roseP)();
//    roseP = printRose;
//    roseP();
//    定义block变量
//  在定义block变量时也需要该变量保存的代码有没有返回值和形参
    void(^roseBlock)();
    
    roseBlock = ^{
        printf(" {@} \n");
        printf("  |  \n");
        printf(" \\|/ \n");
        printf("  | \n");
    };
//    要想执行，必须调用block才会执行
    roseBlock();
    roseBlock();
    */
    /*
    printRose(10);
    void(*roseP)(int);
    roseP = printRose;
    roseP(10);
    void(^roseBlock)(int);
    
   roseBlock = ^(int num){
        for (int i = 0; i<num; i++) {
            printf(" {@} \n");
            printf("  |  \n");
            printf(" \\|/ \n");
            printf("  | \n");
        }
    };
    
    roseBlock(2);
    */
    /*
//    int (*sumP)(int, int);
//    sumP = sum;
//    NSLog(@"sum = %i",sumP(10,20));
    int (^sumBlock)(int,int);
    sumBlock = ^(int value1,int value2){
        return value1 + value2;
    };
    NSLog(@"sum = %i",sumBlock(10,39));
    */
    
//    BLock是一种数据类型，如果Block的参数没有参数，()可以省略
    void (^printBlock)(int);
    
   printBlock = ^(int num){
        for (int i = 0; i < num; i++) {
            printf("---------------\n");
        }
    };
    printBlock(3);
    
    
    
    return 0;
}
