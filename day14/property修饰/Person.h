//
//  Person.h
//  day14
//
//  Created by yhp on 16/1/24.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

/**
 *  如果可一个属性同时提供了setter和getter，这个属性为可读可写属性
 *  只提供setter ,只写属性
 *  只提供getter ，只读属性
 *  格式：@propert(属性修饰符)数据类型 变量名称
 */
@property(readwrite) int age;//readwrite 可读可写
@property(getter=abc) double height;
@property(setter=tizhong:) double weight;
@property(readonly) NSString* name;//readonly 可读
//是否已婚
//程序员有个约定，获取bool类型的值将方法名称改为isXXXX
@property(getter=isMarried)BOOL married;

@end
