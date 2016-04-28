//
//  Person.m
//  day16
//
//  Created by yhp on 16/1/30.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person

+(instancetype)person
{
    return [[[self alloc]init]autorelease];
}
+(instancetype)personWithAge:(int)age
{
//    Person* p = [[self alloc]init];
//    p.age = age;
//    
//    return [p autorelease];
    return [[[self alloc]initWithAge:10]autorelease];
}

-(instancetype)initWithAge:(int)age
{
    if (self = [super init]) {
        _age = age;
    }
    return self;
}

-(void)dealloc
{
    NSLog(@"%s",__func__);
    [super dealloc];
}

@end
