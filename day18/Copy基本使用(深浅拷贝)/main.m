//
//  main.m
//  Copy基本使用(深浅拷贝)
//
//  Created by yhp on 16/2/20.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
//    生成新对象
    /*
    NSString* str = @"lnj";
//    只要是copy的对象，copy出来的内容和以前一样
//    一般情况下，会生成一个新的对象
//  为什么会产生一个新对象:
// 1, 因为拷贝要求修改原来的对象不能影响到拷贝出来的对象\copy出来的也不能影响原来对象
// 2, 原来是不可变，mutableCopy出来的是一个可变对象
    NSMutableString *copyStr = [str mutableCopy];
    NSLog(@"%@,%@",str,copyStr);
    NSLog(@"%p,%p",str,copyStr);
    */
    /*
    NSMutableString* srcStr = [NSMutableString stringWithFormat:@"lnj"];
    NSMutableString* copyStr = [srcStr mutableCopy];
    [srcStr appendString:@" cool"];
    NSLog(@"%@,%@",srcStr,copyStr);
    NSLog(@"%p,%p",srcStr,copyStr);
     */
    /*
    NSMutableString* srcStr = [NSMutableString stringWithFormat:@"lnj"];
    NSString* copyStr = [srcStr copy];
    NSLog(@"%@,%@",srcStr,copyStr);
    NSLog(@"%p,%p",srcStr,copyStr);
     */
//    如果是用不可变对象调用copy，那么不会生成一个新对象
//    原因：原来的是不能修改，copy出来的也是不能修改的
//    OC为了进行内存优化，就不需要生成新的对象
    NSString* srcStr = @"lnj";
    NSString* copyStr = [srcStr copy];
    NSLog(@"%@,%@",srcStr,copyStr);
    NSLog(@"%p,%p",srcStr,copyStr);
    
    /**
     *  正式因为调用copy方法有时候会生成一个新的对象，有时候不会生成一个新的对象
     所以，如果没有生成新的对象----浅copy，本质是指针copy
          如果生成新的对象-------深copy,本质是创建新对象
     */
    
    
    return 0;
}
