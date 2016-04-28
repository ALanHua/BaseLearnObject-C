//
//  main.m
//  new的实现原理
//
//  Created by yhp on 16/1/24.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
    /**
     *  new 坐了3件事情
        1，开辟存储空间 = alloc
        2，初始化成员属性 = init
        3，返回对象地址
     */
//    Person* p = [Person new];
    //alloc开辟存储空间，将所有属性设置为0，返回实例变量地址
    Person* p1 = [Person alloc];
   //初始化成员变量
    Person* p2 = [p1 init];
    //注意alloc和init 返回的地址是一个
    NSLog(@"p1:%p,p2:%p",p1,p2);
// [[Person alloc] init】 == [Person new]
// 建议使用 [[Person alloc] init】
    Person* p3 = [[Person alloc] init];//为了统一语法格式
    
    return 0;
}
