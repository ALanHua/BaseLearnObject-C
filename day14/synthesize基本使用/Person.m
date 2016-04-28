//
//  Person.m
//  day14
//
//  Created by yhp on 16/1/24.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person
/**
 *  synthesize是一个编译器指令，它可以简化我们getter和setter方法实现
 */
@synthesize age = _age;

//@synthesize age = _number;

/**
 *  默认会赋值给和成员变量相同的属性
 */
//@synthesize age;
//-(void)setAge:(int)age
//{
//    _age = age;
//}
//
//
//-(int)age
//{
//    return _age;
//}


@end
