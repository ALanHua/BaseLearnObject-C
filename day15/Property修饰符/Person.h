//
//  Person.h
//  day15
//
//  Created by yhp on 16/1/27.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Room.h"
#import "Dog.h"

@interface Person : NSObject
{
    Room* _room;
    Car* _car;
    Dog* _dog;
    
}

//-(void)setRoom:(Room*)room;
//-(void)setCar:(Car*)car;
//-(void)setDog:(Dog*)dog;
//
//
//-(Room*)room;
//-(Car*)car;
//-(Dog*)dog;
@property(nonatomic,retain)Room* room;//自动生成带有内存管理的setter和getter方法
//1,相同类型的property不能同时使用,

/**
 *  readonly / readwrite
 *  getter 给getter方法起名称
 *  setter 给setter方法起名称
 *  return  生成内存管理的方法
 *  assign 不会生成setter内存管理方法（默认就是assign)
 *  atmic  性能低 多线程
 *  nonatmic 性能高 多线程
 *  在开发中一般使用 nonatmic
 */
@property (assign)int age;

@end
