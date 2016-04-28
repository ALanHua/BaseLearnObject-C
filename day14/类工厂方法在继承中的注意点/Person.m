//
//  Person.m
//  day14
//
//  Created by yhp on 16/1/25.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person

+(instancetype)person
{
//    return [[Person alloc] init];
//    注意：以后但凡自定义工厂方法，不要使用类名来创建
//    一定要使用self来创建
//    self在类方法中代表类对象，谁调用当前方法，就代表谁
    return [[self alloc] init];
}

+(instancetype)personWithAge:(int)age
{
//    Person* p = [[Person alloc] init];
    Person* p = [[self alloc] init];
    p.age = age;
    return p;
}
@end
