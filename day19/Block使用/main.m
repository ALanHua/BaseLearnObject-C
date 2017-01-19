//
//  main.m
//  Block使用
//
//  Created by yhp on 16/8/8.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

void test01(void)
{
    int multiplier = 7;
    int (^myBlock)(int) = ^(int num){
        return num * multiplier;
    };
    
    NSLog(@"%d",myBlock(3));
}

typedef void(^BoolBlock)(BOOL);
typedef int(^IntBlock)(void);
typedef BoolBlock(^HugeBlock)(IntBlock);

void someMethod(void)
{
    BoolBlock ablock = ^(BOOL bValue){
        if (bValue) {
            NSLog(@"True block");
        }
    };
    ablock(true);
}

BoolBlock foo(void)
{
    BoolBlock ablock = ^(BOOL bValue){
        if (bValue) {
            NSLog(@"True block");
        }
    };
    
    return [ablock copy];
}

static int (^maxIntBlock)(int,int) = ^(int a,int b){
    return a * b;
};

void __blockTest(void)
{
    __block int i = 1024;// 如果要在Block内修改变量需要加__block
    BoolBlock bBlock = ^(BOOL bV){
        if (bV) {
            i++;
        }
    };
    NSLog(@"%d",i);
    bBlock(true);
    NSLog(@"%d",i);
    bBlock(true);
    NSLog(@"%d",i);
    bBlock(true);
    NSLog(@"%d",i);
}
/**
 * 注意：static 前面不允许添加__block
 */
/**************************************/
void test02(void)
{
    __block int i = 1024;// 在栈上
    int j = 1;// 在栈上
    void (^blk)(void) = ^{
        NSLog(@"i:%d,j:%d",i,j);
    };
    blk();
    void(^blkInHeap)(void) = [blk copy];
    blkInHeap();// 此时带有__block标记的变量被放到了堆上
    i++;j++;
    blk();
    blkInHeap();
}


typedef double (^multiplyTwoValue)(double,double);

void test03(void)
{
    multiplyTwoValue bFunc = ^(double firstValue,double secondValue){
        return firstValue * secondValue;
    };
    double result = bFunc(3,4);
    NSLog(@"The result is %lf",result);
}

int main(int argc, const char * argv[]) {

//1    someMethod();
//2    BoolBlock a = foo();
//3    a(true);
//4    NSLog(@"%d",maxIntBlock(3,5));
//5    __blockTest();
    test03();
    
    return 0;
}
