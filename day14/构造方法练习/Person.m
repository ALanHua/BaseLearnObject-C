//
//  Person.m
//  day14
//
//  Created by yhp on 16/1/24.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person
- (instancetype)init
{
 
    if (self = [super init]) {
        _age = 10;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"age: %i", _age];
}

@end
