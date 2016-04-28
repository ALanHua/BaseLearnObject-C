//
//  Person.m
//  day13
//
//  Created by yhp on 16/1/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setAge:(int)age
{
    _age = age;
}
-(void)setName:(NSString*)name
{
    _name = name;
}
-(void)setHeight:(double)height
{
    _height = height;
}

-(int)age
{
    return _age;
}
-(NSString*)name;
{
    return _name;
}
-(double)height
{
    return _height;
}

@end
