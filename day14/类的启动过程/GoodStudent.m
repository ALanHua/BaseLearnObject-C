//
//  GoodStudent.m
//  day14
//
//  Created by yhp on 16/1/26.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "GoodStudent.h"

@implementation GoodStudent

+(void)load
{
    NSLog(@"GoodStudent load");
}

//当前类第一次被使用的时候会被调用，创建类对象的时候
//运行时只会被调用一次
//用于对某一个一次性初始化
+(void)initialize
{
    NSLog(@"GoodStudent initialize");
}

@end
