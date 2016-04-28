//
//  Person.h
//  day14
//
//  Created by yhp on 16/1/24.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
//{
//    @public
//    int _age;
//    int age;
//
//}

//@property有一个弊端，只会生成一个最简单的getter和setter，不会给传入的值过滤
//如果想过滤，必须需要自己写getter 和 setter
/**
 *  xcode 4x 以后apple 对property进行了增强，以后用一个property就是实现getter 和 setter
 *  如果没有高数property 没有告诉赋值给谁，默认传给_开头的属性
 *  可以不写成员变量，系统会自动生成
 *  注意：自动生成的是私有变量，是在.m中生成
 */
@property int age;


@end
