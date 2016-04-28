//
//  main.m
//  类的本质及存储细节
//
//  Created by yhp on 16/1/25.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Person.h"

int main(int argc, const char * argv[])
{
    /**
     *  类的本质：其实也是一个对象，会在这个类第一次使用的时候创建
     *  只要有了这个类对象,将来就可以通过类对象来创建实例对象
     *  实例对象中有一个isa指向创建自己的类对象
     *  类对象中保存了当前对象方法
     *  当给一个实例对象方法消息的时候，会根据实例对象中的isa指针去对应类对象中查找
     *  所有类对象的继承关系就是元对象的继续关系
     *  元类对象isa存储类方法
     */
    Person* p = [Person new];
    [p setAge:30];
    
    return 0;
}
