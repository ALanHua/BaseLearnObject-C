//
//  main.m
//  字符串基本概念
//
//  Created by yhp on 16/2/2.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
//    如何创建字符串对象
//    通过不同方式创建，存储位置不一样,不同的平台和编译器存储的地方不一样
//    MAC平台会对字符串进行优化，iOS不会进行优化，
//    1，字符串常量，如果创建多个对象，指向同一个存储空间
    
    NSString *str1 = @"yhp";//存在常量区
    NSString *str11 = @"yhp";//
    NSLog(@"str1:%p,str11:%p",str1,str11);//地址一样
//    2，通过alloc init 创建，alloc在堆中开辟一个空间
    NSString *str2 = [[NSString alloc]initWithFormat:@"yhp"];//存储在堆区
    NSString *str22 = [[NSString alloc]initWithFormat:@"yhp"];//存储在堆区
    NSLog(@"str1:%p,str11:%p",str2,str22);//Xcode6以上地址一样，MAC地址一样
//    3，通过stringWithFormat
//    内部封装了 alloc init
    NSString* str3 = [NSString stringWithFormat:@"yhp"];//存储在堆区
    NSString* str33 = [NSString stringWithFormat:@"yhp"];//存储在堆区
    NSLog(@"str1:%p,str11:%p",str3,str33);//Xcode6以上地址一样，MAC地址一样
    /**
     一般情况下，只要是alloc或者工厂方法，每次都会在堆中分配内存空间，alloc initWithString是通过copy一个对象给我们
     copy分深浅copy，正好initWithString正好是浅copy，不会创建新对象，无论在哪个平台
     */
    NSString* str4 = [[NSString alloc]initWithString:@"lisi"];
    NSString* str44 = [[NSString alloc]initWithString:@"lisi"];
    NSLog(@"str1:%p,str11:%p",str4,str44);
    
    return 0;
}
