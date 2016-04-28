//
//  Person.h
//  day14
//
//  Created by yhp on 16/1/24.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
    double _height;
    double _weight;
    NSString* _name;
}

/**
 * property 是一个编译器指令
    在xcode之前，可以使用@property来代替getter和setter方法声明
    也就是@property就是用来简化代码的
 */
@property int age;
@property double height;
@property double weight;
@property NSString* name;
/**
 *  setter
 给成员变量赋值
 */
//-(void)setAge:(int)age;
//-(void)setHeight:(double)height;
//-(void)setWeight:(double)weight;
//-(void)setName:(NSString*)name;

/**
 *  getter
 *  @return 成员变量age
 */
//-(int)age;
//-(double)height;
//-(double)weight;
//-(NSString*)name;

@end
