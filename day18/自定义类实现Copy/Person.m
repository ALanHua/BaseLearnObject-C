//
//  Person.m
//  day18
//
//  Created by yhp on 16/2/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person

-(NSString*)description
{
    return [NSString stringWithFormat:@"name = %@,age = %i",_name,_age];
}

-(id)copyWithZone:(NSZone *)zone
{
//    1，创建一个新的对象
    Person* p = [[[self class]allocWithZone:zone]init];
//    2，设置当前对象的内容
    p.age = _age;
    p.name = _name;
//    3，返回新的对象
    return p;
}
-(id)mutableCopyWithZone:(NSZone *)zone
{
    //    1，创建一个新的对象
    Person* p = [[[self class]allocWithZone:zone]init];
    //    2，设置当前对象的内容
    p.age = _age;
    p.name = _name;
    //    3，返回新的对象
    return p;
    
}
@end
