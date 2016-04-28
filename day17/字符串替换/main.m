//
//  main.m
//  字符串替换
//
//  Created by yhp on 16/2/4.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    /*
//    将& 替换成/
    NSString* str = @"http:&&www.520it.com&img&lmj.gif";
     OccurrencesOfString:要被替换的字符串
     withString：用什么替换

    NSString* newStr = [str stringByReplacingOccurrencesOfString:@"&" withString:@"/"];
    NSLog(@"newStr = %@",newStr);
    */
    /*
//    1,去除空格，2，将&替换为/
    NSString* str = @"  http:    &&   www.520it.com   &img&lmj.gif  ";
//    1,去除空格
    NSString* newStr = [str stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSLog(@"newStr = %@",newStr);
//    2，将&替换为/
    NSString* newStr2 = [newStr stringByReplacingOccurrencesOfString:@"&" withString:@"/"];
    NSLog(@"newStr = %@",newStr2);
    */
//    3,替换首尾
    NSString * str = @"HTTP://www.520it.com/img/LMJ.GIF";
//    NSString* str = @"   http:&&www.520it.com&img&lmj.gif   ";
//    NSCharacterSet* set = [NSCharacterSet whitespaceCharacterSet];
//    NSString* newStr = [str stringByTrimmingCharactersInSet:set];
    NSCharacterSet* set = [NSCharacterSet uppercaseLetterCharacterSet];
    NSString* newStr = [str stringByTrimmingCharactersInSet:set];
    NSLog(@"newStr = %@",newStr);
    
    return 0;
}
