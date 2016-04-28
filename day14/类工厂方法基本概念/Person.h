//
//  Person.h
//  day14
//
//  Created by yhp on 16/1/25.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject


@property int age;
/**
 *  类工厂方法：用于快速创建类的方法
 *  主要用于给对象分配存储空间和初始化存储空间
 
 
 规范
 1,一定是类方法
 2,方法名称以类开头，首字母小写
 3,一定有返回值，返回值是id/instancetype
 */
+(instancetype)person;
+(instancetype)personWithAge:(int)age;

@end
