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
    Person* p = [[Person alloc] init];
    return p;
}

+(instancetype)personWithAge:(int)age
{
    Person* p = [[Person alloc] init];
    p.age = age;
    return p;
}
@end
