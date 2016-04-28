//
//  Person.m
//  day16
//
//  Created by yhp on 16/1/30.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)run
{
    NSLog(@"%s",__func__);
}

-(void)dealloc
{
    NSLog(@"%s",__func__);
    [super dealloc];
}

@end
