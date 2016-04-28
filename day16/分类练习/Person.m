//
//  Person.m
//  day16
//
//  Created by yhp on 16/1/31.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"
#import "NSString+YHP.h"

@implementation Person

-(void)test
{
    NSString* str = @"13ddhy20873hh455";
    int count = [NSString countWithString:str];
    NSLog(@"count:%i",count);
}

@end
