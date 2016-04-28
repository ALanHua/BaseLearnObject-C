//
//  main.m
//  字符串比较
//
//  Created by yhp on 16/2/3.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    NSString* str1 = @"abc";
    NSString* str2 = @"ABC";
    /*
    BOOL flag = [str1 isEqualToString:str2];
    NSLog(@"flag:%i",flag);
//    下面这个方法是比较两个字符串的地址是不是一样
    flag = (str1 == str2);
    NSLog(@"flag:%i",flag);
    */
//    比较字符串的大小
//    NSOrderedAscending = -1L,前面的小于后面的
//    NSOrderedSame,相等
//    NSOrderedDescending 前面大于后面的
    /*
    switch ([str1 compare:str2]) {
        case NSOrderedAscending:
            NSLog(@"str1 小于 str2");
            break;
        case NSOrderedSame:
            NSLog(@"str1 等于 str2");
            break;
        case NSOrderedDescending:
            NSLog(@"str1 大于 str2");
            break;
        default:
            break;
    }
    */
//    忽略大小写比较
    switch ( [str1 caseInsensitiveCompare:str2]) {
        case NSOrderedAscending:
            NSLog(@"str1 小于 str2");
            break;
        case NSOrderedSame:
            NSLog(@"str1 等于 str2");
            break;
        case NSOrderedDescending:
            NSLog(@"str1 大于 str2");
            break;
        default:
            break;
    }
    return 0;
}
