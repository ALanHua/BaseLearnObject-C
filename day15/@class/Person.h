//
//  Person.h
//  day15
//
//  Created by yhp on 16/1/28.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Car.h"
@class Car;//仅仅告诉编译器，后面是个类，不会做任何copy
//注意@class 编译器并不知道类的属性和方法，所以.m中需要import.h
//import是一个预编译指令会将头文件copy过来，头文件变化，会在copy一下
/**
 *  1,如果都在.h中import，只要有间接关系都需要重新copy
 *  2,在.h用@class,在。m中用import,直接copy直接有关系的文件
 *  3，
 */
@interface Person : NSObject

@property(nonatomic,retain)Car* car;

@end
