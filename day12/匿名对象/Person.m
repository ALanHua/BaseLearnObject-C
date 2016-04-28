//
//  Person.m
//  day12
//
//  Created by yhp on 16/1/19.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)say
{
    NSLog(@"name:%@,age:%i",_name,_age);
}
-(void)signale:(Iphone *)phone
{
    [phone callWithNumber:12345678];
}
@end
