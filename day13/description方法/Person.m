//
//  Person.m
//  day13
//
//  Created by yhp on 16/1/22.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)setAge:(int)age
{
    _age = age;
}
-(void)setHeight:(double)height
{
    _height = height;
}
-(void)setWeight:(double)weight
{
    _weight = weight;
}
-(void)setName:(NSString*)name
{
    _name = name;
}
-(void)setTel:(NSString*)tel
{
    _tel = tel;
}
-(void)setEmail:(NSString*)email
{
    _email = email;
}

-(int)age
{
    return _age;
}
-(double)height
{
    return _height;
}
-(double)weight
{
    return _weight;
}
-(NSString*)name
{
    return _name;
}
-(NSString*)tel
{
    return _tel;
}
-(NSString*)email
{
    return _email;
}
- (NSString *)description
{
    /**
     *  建议，在descrip 中不要是self
     *  如果用%@ self会造成死循环
     */
    NSString *str = [NSString stringWithFormat:@"age:%i ,name:%@",_age, _name];
   return str;
}
@end
