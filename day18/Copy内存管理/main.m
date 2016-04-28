//
//  main.m
//  Copy内存管理
//
//  Created by yhp on 16/2/20.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
//    1,创建一个不可变的字符串
//    如果是浅copy,需要进行一次retain，需要对以前的对象进行一次release
//    如果是深copy,系统不会对原来的对象进行Retain
    NSString* str = [[NSString alloc]initWithFormat:@"lnj"];
    NSLog(@"%lu",[str retainCount]);
    
    
    
    return 0;
}
