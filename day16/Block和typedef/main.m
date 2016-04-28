//
//  main.m
//  Block和typedef
//
//  Created by yhp on 16/1/31.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int sum(int value1,int value2)
{
    return value1 + value2;
}

int minus(int value1,int value2)
{
    return value1 - value2;
}
//函数
typedef int (*caculate)(int,int);
//Block
typedef int (^caculateBlock)(int,int);

int main(int argc, const char * argv[])
{
    /*
//    int(*sumP)(int,int);
//    sumP = sum;
    caculate sumP = sum;
    NSLog(@"sum:%i",sumP(10,23));
    
//    int (*minusP)(int,int);
//    minusP = minus;
    caculate minusP = minus;
    NSLog(@"minus:%i",minusP(40,23));
*/
//    int(^sumBlock)(int,int);
   caculateBlock sumBlock = ^(int value1,int value2){
        return value1 + value2;
    };
    NSLog(@"sum:%i",sumBlock(10,23));
    
//    int (^minusBlock)(int,int);
    caculateBlock minusBlock = ^(int value1,int value2){
        return value1 - value2;
    };
    NSLog(@"sum:%i",minusBlock(40,23));
    
    return 0;
}
