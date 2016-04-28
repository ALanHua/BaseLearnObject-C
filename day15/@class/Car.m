//
//  Car.m
//  day15
//
//  Created by yhp on 16/1/28.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Car.h"
#import "Wheel.h"

@implementation Car

-(void)dealloc
{
    
    [_wheel release];
    [super dealloc];
}

@end
