//
//  YHPNode.m
//  InterviewCodes
//
//  Created by yhp on 2017/1/18.
//  Copyright © 2017年 YouHuaPei. All rights reserved.
//

#import "YHPNode.h"

@implementation YHPNode

-(instancetype)initWithObject:(NSObject*)object
{
    if(self = [super init]){
        _value = object;
    }
    return self;
}
@end
