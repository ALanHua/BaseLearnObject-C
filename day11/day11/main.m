//
//  main.m
//  day11
//
//  Created by yhp on 16/1/16.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//


#include <stdio.h>

//foundation.h 我们称之为主头文件
#import <Foundation/Foundation.h>

//工具箱地址：/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks
//所有的猪头文件都和工具箱的名称一致


/*
 import 的功能和include 一样，是将右边文件拷贝到import的位置
 为了降低程序员的负担，防止重复导入，避免程序员写头文件卫士
 import 有点，会自动防止重复copy
 */
#import "zs.h"


int main(int argc, const char * argv[])
{
    //1,oc兼容c语言
    printf("hello world\n");
    /*
     printf和NSLog的区别：
     NSLog会自动换行
     */
    NSLog(@"OC hello world");
    
    NSLog(@"sum: %i",sum(20, 30));
    
    return 0;
}
