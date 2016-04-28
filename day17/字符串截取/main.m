//
//  main.m
//  字符串截取
//
//  Created by yhp on 16/2/3.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>



int main(int argc, const char * argv[])
{
    NSString* str = @"<head>小马哥</head>";
/*
//    NSRange range = {6,3};
//    NS的结构体都可以使用NSMakeXXX创建
//    NSRange range = NSMakeRange(6, 3);
//    动态获取起始位置和长度
    NSUInteger location =  [str rangeOfString:@">"].location + 1;
//    动态获取长度
//    rangeOfString 是从左到右查找
//    NSUInteger length = [str rangeOfString:@"<" options:NSBackwardsSearch].location - location;
    NSUInteger length = [str rangeOfString:@"</"].location - location;
//    NSLog(@"location:%lu,length:%lu",location,length);
    NSRange range = NSMakeRange(location, length);
    NSString* newStr = [str substringWithRange:range];
    NSLog(@"str:%@,newStr:%@",str,newStr);
*/
//    从什么地方开始截取,一直街道最后
//    NSString* newStr = [str substringFromIndex:6];
//    NSLog(@"newStr :%@",newStr);
//    从头开始截取，一直截取到什么位置
//    NSString* newStr = [str substringToIndex:6];
//    NSLog(@"newStr :%@",newStr);
    NSUInteger location = [str rangeOfString:@">"].location + 1;
    NSString* newStr = [str substringFromIndex:location];
//    NSLog(@"newStr :%@",newStr);
    location = [newStr rangeOfString:@"</"].location;
//    改变指针指向
    newStr = [newStr substringToIndex:location];
    NSLog(@"newStr :%@",newStr);
    return 0;
}
