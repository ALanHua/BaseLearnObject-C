//
//  Student.m
//  day14
//
//  Created by yhp on 16/1/24.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype)init
{
    self = [super init];// [self setAge:10];
    if (self) {
        _no = 1;
    }
    return self;
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"age:%i, no:%i", [self age],_no];
}
@end
