//
//  Person.m
//  day18
//
//  Created by yhp on 16/2/16.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)say
{
    NSLog(@"加油");
}

-(void)sayWithName:(NSString*)name
{
    NSLog(@"%@ 加油",name);
}
@end
