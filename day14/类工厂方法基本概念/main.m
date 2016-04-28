//
//  main.m
//  类工厂方法基本概念
//
//  Created by yhp on 16/1/25.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
//    Person* p = [Person person];
//    p.age = 30;
    Person* p = [Person personWithAge:30];
    NSLog(@"age:%i",p.age);
    /**
     *  类工厂方法是苹果的规范，用于创建一个对象
     */
//    [NSString stringWithFormat:@""];
//    [NSArray array];
//    [NSArray arr]
    
    return 0;
}
