//
//  SportProtocol.h
//  day17
//
//  Created by yhp on 16/2/1.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SportProtocol <NSObject>
//1，协议只能申明方法，不能声明属性
//2,当父类遵守了某个协议，子类也会自动遵守这个协议
//3，OC中可以遵守一个或者多个协议，OC只有单继承

//方法声明列表
@required
//如果协议中的方法是required,而遵守协议没有实现会警告
-(void)playFootball;
@optional
//如果协议中的方法是Optional，即该方法方法为可选
-(void)playBasketball;
-(void)playBaseball;
//如果没有使用任何关键字修饰协议中的方法，那么该方法默认就是requireed的
//@required @optional 程序员交流，不实现也不会报错
@end
