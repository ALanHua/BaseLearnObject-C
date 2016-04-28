//
//  main.m
//  获取类对象及类对象应用场景
//
//  Created by yhp on 16/1/25.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
void demo(Class c);
int main(int argc, const char * argv[])
{
//    1,如何获取类对象
//    [实例对象 class] / [类名 class]
    Person* p1 = [[Person alloc]init];
    Person* p2 = [[Person alloc]init];
//    一个类在内存只有一份类对象
    Class c1 = [p1 class];
    Class c2 = [p2 class];
    Class c3 = [Person class];
    NSLog(@"c1 :%p,c2:%p,c3:%p",c1,c2,c3);
//    2,类对象的应用场景
    //用于创建实例对象，用于调用类方法
    Person* p3 = [[c1 alloc] init];
    p3.age = 30;
    NSLog(@"age:%i",p3.age);
//    c1 == Person
    [c1 test];
    demo(c1);
    return 0;
}

void demo(Class c)
{
    id obj = [[c alloc] init];
    NSLog(@"%@",obj);
}
