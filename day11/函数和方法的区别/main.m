//
//  main.m
//  函数和方法的区别
//
//  Created by yhp on 16/1/17.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * 1 函数属于整一个文件
 * 2,函数可以直接调用，方法只能对象或类调用
 * 注意，函数卸载类的声明中会不识别
 * 3,不能把函数来调用，也不能把方法当做函数来调用
        方法的注意点：
    可以只有申明没有实现，也可以没有实现只有申明(运行时会报错)
 
 */
@interface Person : NSObject

-(void)test;
+(void)demo;
@end

@implementation Person

-(void)test
{
    NSLog(@"test");
}
+(void)demo
{
    NSLog(@"demo");
}
@end

extern void sum();
static void minus();
//外部函数
extern void sum()
{
    printf("sum\n");
}
//内部函数
static void minus()
{
    printf("minus");
}

int main(int argc, const char * argv[])
{
    
    return 0;
}
