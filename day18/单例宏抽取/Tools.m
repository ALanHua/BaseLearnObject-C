//
//  Tools.m
//  day18
//
//  Created by yhp on 16/2/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Tools.h"

@implementation Tools
/*
+(instancetype)shareTools
{
    Tools* instance = [[self alloc]init];
    return instance;
}

static Tools* _instance;

+(instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone:zone]init];
    });
    return _instance;
}

-(id)copyWithZone:(NSZone *)zone
{
    return _instance;
}


-(id)mutableCopyWithZone:(NSZone *)zone
{

    return _instance;
}
//MRC
-(oneway void)release
{
}

-(instancetype)retain
{
    return _instance;
}
-(NSUInteger)retainCount
{
//    return 1;
//    注意，为了方便程序员沟通，一般不会返回1，而是返回一个比较大的值
    return MAXFLOAT;
}
*/

inplementationSigleton(Tools)


@end
