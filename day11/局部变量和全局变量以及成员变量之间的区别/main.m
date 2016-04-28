//
//  main.m
//  局部变量和全局变量以及成员变量之间的区别
//
//  Created by yhp on 16/1/17.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    //成员变量，实例变量，属性，只能卸载类的声明中
    //不能初始化，只能通过对象访问

    int age;
    
}

@end

@implementation Person

@end
//全局变量
//存储在静态区，直到程序结束才释放
int a ;
int b = 10;
int main(int argc, const char * argv[])
{
    //区部变量
    //系统会自动释放
    {
        int value;
    }
    return 0;
}






