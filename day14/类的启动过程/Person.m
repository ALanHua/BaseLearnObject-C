//
//  Person.m
//  day14
//
//  Created by yhp on 16/1/26.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person

//只要程序一启动就会将所有类的代码加载到内存的代码区
//会在类加载到内存的时候调用，且仅有一次
//如果存在继承关系的话，会先调用父类的load方法，然后调用子类的load方法 
+(void)load
{
    NSLog(@"Person load");
}

//当前类第一次被使用的时候会被调用，创建类对象的时候
//运行时只会被调用一次
//用于对某一个一次性初始化
//initialize和load一样，如果有继承关系，先调用父类，在调用子类
+(void)initialize
{
      NSLog(@"Person initialize");
}
@end
