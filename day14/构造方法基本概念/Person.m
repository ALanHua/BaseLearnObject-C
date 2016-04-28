//
//  Person.m
//  day14
//
//  Created by yhp on 16/1/24.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person

//重新init
//必须按照固定格式写：
//1，先初始化父类，在初始化子类
//2，必须判断父类是否初始化成功，只有初始化成功才能继续子类
//3，返回当前对象的地址
//-(instancetype)init
//{
////    1
//    self = [super init];
////    2
//    if (self != nil) {
//        //初始化子类
//        _age = 6;
//    }
////   3
//    return self;
//}

//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        _age = 6;
//    }
//    return self;
//}
- (instancetype)init
{
//    self = [super init];
    if (self = [super init]) {
        _age = 6;
    }
    return self;
}
@end
