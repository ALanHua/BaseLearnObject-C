//
//  main.m
//  NSNumber
//
//  Created by yhp on 16/2/17.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    int age = 10;
    double number = 5.1;
    int value = 6;
//    NSArray* arr = @[age,number,value];
//    1,将基本数据类型转换成对象类型
    NSNumber* ageN = [NSNumber numberWithInt:age];
    NSNumber* numberN = [NSNumber numberWithDouble:number];
    NSNumber* valueN = [NSNumber numberWithInt:value];
    NSArray* arr = @[ageN,numberN,valueN];
    NSLog(@"%@",arr);
//    2,将对象类型转换成基本数据类型
//    int temp = [ageN intValue];
//    NSLog(@"%i",temp);
//    double temp = [numberN doubleValue];
//     NSLog(@"%f",temp);
//    3,基本数据类型转换为对象类型简写
//    注意，如果传入的是变量，必须在@后面写上(),如果传入数据类型是常量，后面的()可以省略
//    NSNumber* temp = @(number);
    NSNumber* temp = @10.10;
    NSLog(@"%@",temp);
    
    return 0;
}
