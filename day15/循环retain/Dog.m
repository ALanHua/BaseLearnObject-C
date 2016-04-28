//
//  Dog.m
//  day15
//
//  Created by yhp on 16/1/28.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Dog.h"
#import "Person.h"

@implementation Dog

-(void)dealloc
{
    NSLog(@"%s",__func__);
    
//    [_owner release];
    
    [super dealloc];
}

@end
