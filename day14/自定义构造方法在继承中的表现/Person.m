//
//  Person.m
//  day14
//
//  Created by yhp on 16/1/25.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)init
{
    self = [super init];
    if (self) {
        _age = 10;
    }
    return self;
}

-(NSString* )description
{
    return [NSString stringWithFormat:@"name:%@,age :%i", _name,_age];
}
-(instancetype)initWithAge:(int)age
{
    if (self = [super init]) {
        _age = age;
    }
    
    return self;
}
-(instancetype)initWithName:(NSString*)name
{
    if(self = [super init]){
        _name = name;
    }
    return self;
}
-(instancetype)initWithAge:(int)age andName:(NSString*)name
{
    if (self = [super init]) {
        _age = age;
        _name = name;
    }
    
    return self;
}
@end
