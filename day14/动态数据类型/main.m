//
//  main.m
//  动态数据类型
//
//  Created by yhp on 16/1/24.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Person.h"

int main(int argc, const char * argv[])
{
    /**
     *  id是一个动态数据类型
     *  1，可以定义变量
        2，作为函数参数
        3，作为函数的返回值
     */
//    静态类型,所有的数据类型在编译时就知道变量的类型，属性和方法
//   如果访问了不属于静态类型编译器会报错
    /**
     *  动态，编译在编译时并不知道变量的类型，只有在运行的时候在知道数据类型
     *  访问不属于自己的方法和属性，编译器不会报错
     * id 与 NSobject 区别，id是动态类型，NSObject是静态类型
     * 动态数据类型可以调用私有数据类型
     * 弊端：会调用不属于自己的东西，运行时会出错
     */
//    Person* p = [Person new];
//    p.age = 30;
//    [p sleep];
    
    
//    Person* p = [Student new];
//    p.age = 30;
//    [p sleep];
//    Student* s = (Student* )p;
//    [s eat];
//    id == NSObject* 万有指针
//    NSObject* obj = [Person new];
//    NSObject* obj2 = [Person new];
    //金泰数据类型不能调用子类特有的数据类型，动态数据类型可以调用
    //id 可以用在多态，减少代码量
//   为了避免id的弊端，一般情况下如果使用动态类型定义一个变量
//    在调用这个变量的方法之前会进行一次判断，判断当前变量能否调用该方法
//    id obj = [Person new];
//    [obj sleep];
//    [obj test];
//    
//    id obj2 = [Student new];
//    [obj2 eat];
//    [obj2 test];
    id obj = [Student new];
//    if ([obj isKindOfClass:[Student class]]) {
//        // 判断指定的是否是指定的类或者子类
//          [obj eat];
//    }
    if ([obj isMemberOfClass:[Student class]]) {
        //isKindOfClass 只包含当前实例，不包含子类
        [obj eat];
    }
    NSLog(@"----------");

    
    return 0;
}
