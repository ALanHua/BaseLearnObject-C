//
//  main.m
//  分类练习
//
//  Created by yhp on 16/1/31.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+YHP.h"
#import "Person.h"

//int countWithString(NSString* str)
//{
//    static int count;
//    for (int i = 0; i < str.length; i++) {
//        unichar c = [str characterAtIndex:i];
//        if (c >= '0' && c <= '9') {
//            count++;
//        }
//    }
//    return count;
//}

int main(int argc, const char * argv[])
{
    /**
     *  已知一个字符串，找出所有字符串里的数字
     *  字符串:a123jj456kfd5jlwf7ld
     *  1,计数器
     *  2，遍历字符串，取出字符
     */
    
    NSString* str = @"a123jj456kfd5jlwf7ld3";
//    unichar c = [str characterAtIndex:0];
//    NSLog(@"%c",c);
//    int count;
//    for (int i = 0; i < str.length; i++) {
//        unichar c = [str characterAtIndex:i];
////        NSLog(@"%c",c);
//        if (c >= '0' && c <= '9') {
//            count++;
//        }
//    }
//    int count = [NSString countWithString:str];
    int count = [str count];
    NSLog(@"count :%i",count);
    
    
    
    return 0;
}
