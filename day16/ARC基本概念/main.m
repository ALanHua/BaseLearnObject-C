//
//  main.m
//  ARC基本概念
//
//  Created by yhp on 16/1/30.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

//ARC是编译器会在合适的地方插入内存回收代码，消除手动内存管理
//避免内存管理

int main(int argc, const char * argv[])
{
//    默认情况下所有的指针都是抢指针
//    Person* p = [[Person alloc]init];
//    [p retain];
/*
    {
        //__strong 强指针
//        p = nil;
//        __strong Person* p = [[Person alloc]init];
////弱指针
//        __weak Person* p2 = p;
//        p = nil;
//        在开发中千万不要用弱指针保存一个刚刚创建的对象
        __weak Person* p = [[Person alloc]init];
        
    }
*/
//    单个内存管理，不用就把他设置成nil;
    Person* p = [[Person alloc]init];
    p = nil ;
    
    return 0;
}
