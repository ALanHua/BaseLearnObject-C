//
//  Student.m
//  day18
//
//  Created by yhp on 16/2/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Student.h"

@implementation Student

-(NSString*)description
{
    return [NSString stringWithFormat:@"name = %@,age = %i,height = %f",[self name]     ,[self age],_height];
}

-(id)copyWithZone:(NSZone *)zone
{
//    1,创建副本
    id obj = [super copyWithZone:zone];
//    id obj = [[[self class]allocWithZone:zone]init];
//    2,设置数据给副本
//    [obj setAge:[self age]];
//    [obj setName:[self name]];
    [obj setHeight:_height];
//    3,返回副本
    return obj;
}
@end
