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
@property NSString* name;


//@property double newHeight;
/**
 *  自定义init方法
 *  1，对象方法
 *  2，一定返回id或者instancetype
 *  3,init开头
 */

-(instancetype)initWithAge:(int)age;
-(instancetype)initWithName:(NSString*)name;
//一个类有一个或者多个自定义初始化方法
//自定义初始化参数可以有一个或者多个
-(instancetype)initWithAge:(int)age andName:(NSString*)name;
@end
