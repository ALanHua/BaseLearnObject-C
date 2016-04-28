//
//  main.m
//  构造方法基本概念
//
//  Created by yhp on 16/1/24.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
    /**
     *  在oc中init开头为构造方法，对象创建处理就初始化属性
     */
    Person* p = [[Person alloc] init];
//    p.age =  6;
    NSLog(@"age %i",p.age);
    
    Person* p2 = [[Person alloc] init];
//    p2.age =  6;
    NSLog(@"age %i",p2.age);
    
    Person* p3 = [[Person alloc] init];
//    p3.age =  6;
    NSLog(@"age %i",p3.age);
    return 0;
}
