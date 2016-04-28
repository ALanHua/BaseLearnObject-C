//
//  Person+yhp.h
//  day16
//
//  Created by yhp on 16/1/31.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

//1，分类是给原有类添加方法，不能添加属性

@interface Person (yhp)

//2,分类中的property只会生成setter和getter方法的声明，不会生成实现和私有成员变量
//@property(nonatomic,assign)double height;

//3
-(void)hello;

@end
