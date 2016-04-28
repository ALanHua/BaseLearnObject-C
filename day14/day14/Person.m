//
//  Person.m
//  day14
//
//  Created by yhp on 16/1/24.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person
{
    //实例变量既可以在interface中定义或者在implementation中定义
    //写在implementation中的成员变量，默认是成员变量，并且和利用@private修饰的不太一眼
    //在其他类中无法查看和访问
//    在implementation定义的实例变量只能在本类中使用
    double _score;
}

-(void)test
{
    NSLog(@"%f",_score);
}

@end
