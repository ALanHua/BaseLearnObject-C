//
//  YHPPerson.m
//  day19
//
//  Created by yhp on 16/8/17.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "YHPPerson.h"

@implementation YHPPerson

static id _instance;

+(instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    
    return _instance;
}

+(instancetype)sharePerson
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc]init];
    });
    
    return _instance;
}

- (id)copyWithZone:(NSZone *)zone
{
    return _instance;
}

@end
