//
//  Person.m
//  day15
//
//  Created by yhp on 16/1/26.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)dealloc
{
    NSLog(@"Person dealloc");
//   super dealloc一定要写到所有代码之后
    [super dealloc];
}

@end
