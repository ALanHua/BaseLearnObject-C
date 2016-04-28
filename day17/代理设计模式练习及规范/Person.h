//
//  Person.h
//  day17
//
//  Created by yhp on 16/2/2.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  协议的编写规范
 *  1，当前协议属于谁就定义到谁的头文件里
 *  2协议一般以它属于的那个类的类名开头，后面跟上protocol和delegate
 *  3,协议中的方法名称，以Protocol前的作为开头
 #  4，协议中的方法会将这参数传出去
 #  5,一般情况下一个类的代理属于的名字叫做delegate
 *  6,当摸一个类要成为一个类的代理的时候，一般情况下@protocol;告诉当前类这是一个协议
      在.m中用#import导入一个协议的声明
 */
@class Person;

@protocol PersonProtocol <NSObject>

-(void)personfindHourse:(Person*)person;

@end

@interface Person : NSObject <PersonProtocol>

@property(nonatomic,strong)id<PersonProtocol> delegate;
-(void)findHourse;

@end
