//
//  Tools.m
//  day18
//
//  Created by yhp on 16/2/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Tools.h"

@implementation Tools
//一般创建一个单例对象，都有一个与之对应的工厂方法
//一般情况下用于创建单例对象的方法名称都以share开头，或者defaults开头
+(instancetype)shareInstance
{
    Tools* instance = [[self alloc]init];
    return instance;
}

static Tools* _instance;

+(instancetype)allocWithZone:(struct _NSZone *)zone
{
//waring!!!    多线程是有问题
    /*
    NSLog(@"%s",__func__);
//    由于所有的创建方法都会调用该方法，所以只需要在该方法中控制当前对象中创建一次
    if (_instance == nil) {
        _instance = [[super allocWithZone:zone]init];
        NSLog(@"创建了一个对象");
    }
    return _instance;
     */
//    以下代码在多线程保证
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone:zone]init];
    });
    return _instance;
}

//copyWithZone用什么调用，对象
-(id)copyWithZone:(NSZone *)zone
{
//    Tools *t = [[[self class]allocWithZone:zone]init];
//    return t;
    return _instance;
}


-(id)mutableCopyWithZone:(NSZone *)zone
{
//    Tools *t = [[[self class]allocWithZone:zone]init];
//    return t;
    return _instance;
}

-(oneway void)release
{
//    程序只有一份实例，什么都不做
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

@end
