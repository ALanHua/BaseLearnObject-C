//
//  Person.m
//  day14
//
//  Created by yhp on 16/1/24.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person

//重写了，就不会自动生成了
//如果同时重写了getter和setter,@property不会帮我生成成员变量
-(void)setAge:(int)age
{
    if (age < 0) {
        age = 0;
    }
    _age = age;
}
@end
