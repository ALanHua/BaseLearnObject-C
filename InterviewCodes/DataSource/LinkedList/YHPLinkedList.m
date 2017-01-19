//
//  YHPLinkedList.m
//  InterviewCodes
//
//  Created by yhp on 2017/1/18.
//  Copyright © 2017年 YouHuaPei. All rights reserved.
//

#import "YHPLinkedList.h"
#import "YHPNode.h"

@interface YHPLinkedList ()
{
    NSUInteger _count;
}
@end


@implementation YHPLinkedList

-(instancetype)initWithHead:(NSObject*)value
{
    if (self = [super init]) {
        _head = [[YHPNode alloc]initWithObject:value];
        _count = 1;
    }
    return self;
}



@end
