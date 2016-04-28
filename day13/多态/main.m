//
//  main.m
//  多态
//
//  Created by yhp on 16/1/22.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "dog.h"
#import "Cat.h"
#import "Animal.h"
#import "Person.h"
#import "Pig.h"
int main(int argc, const char * argv[])
{
//    Dog* d = [Dog new];
//    [d eat];
//    Cat* c = [Cat new];
//    [c eat];
    //多态
//    动态类型，在编译的时候编译器只会检查当前类型对应的类中有没有需要调用的方法
//             在运行时，系统会自动判断a1的真是类型
   /*
    Animal* a1 = [Dog new];
    [a1 eat];
//    注意在多态想调用子类特有的类型必须强制转换成子类的类型才能调用
//    [a1 kanja];
    Dog* d1 = (Dog*)a1;
    [d1 kanjia];
    */
    Dog* d = [Dog new];
    [Person food:d];
    
    Cat* c = [Cat new];
    [Person food:c];

    Pig* p = [Pig new];
     [Person food:p];
    
    /**
     *  什么事多态：事物的多种变现
        用父类指针指向子类
        优点：
            提高代码的扩展性
        注意点：
            父类指向子类特有的方法，需要强转
     */
    
    return 0;
}
