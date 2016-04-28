//
//  Person.m
//  day15
//
//  Created by yhp on 16/1/28.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"
#import "Dog.h"

@implementation Person

-(void)dealloc
{
    NSLog(@"%s",__func__);
//    [_dog release];
    self.dog = nil;
    
    [super dealloc];
}

@end
