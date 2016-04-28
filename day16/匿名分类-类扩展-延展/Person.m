//
//  Person.m
//  day16
//
//  Created by yhp on 16/1/31.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

//添加私有属性和方法
@interface Person ()
{
    int _age;
}

-(void)say;

@end


@implementation Person

-(void)eat
{
    NSLog(@"%s",__func__);
}

//-(void)say
//{
//    NSLog(@"age:%i",_age);
//}

@end
