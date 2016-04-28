//
//  main.m
//  字符串转换
//
//  Created by yhp on 16/2/15.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
//    NSString* str = @"abc";
//    1,将字符串转换为大写
    /*
    NSString* newStr = [str uppercaseString];
    NSLog(@"newStr: %@",newStr);
     */
//    2,将字符串转换成小写
    /*
    NSString* newStr2 = [newStr lowercaseString];
    NSLog(@"newStr: %@",newStr2);
//    http://www.520it.com/img/lmj.gif;
    */
//    3,将字符串的首字符转换成大写
    /*
    NSString* newStr = [str capitalizedString];
    NSLog(@"newStr: %@",newStr);
    */
//    4,字符串与基本数据类型转换
    /*
    NSString* str1 = @"110";
    NSString* str2 = @"120";
    int value1 = [str1 intValue];
    int value2 = [str2 intValue];
    NSLog(@"sum:%i",value1+value2);
//    注意，如果不是int,double,float,bool,integer,longlong这些类型不要顺便乱转换
    NSString* str3 = @"12A";
    int value3 = [str3 intValue];
    NSLog(@"value3:%i",value3);
     */
//    c语言字符串和OC字符串之间的准换
    char *cStr = "lnj";
    NSString* str = [NSString stringWithUTF8String:cStr];
    NSLog(@"Str: %@",str);
    
    NSString* newStr = @"lnj";
    const char *cStr2 = [newStr UTF8String];
    NSLog(@"cStr2: %s",cStr2);
    
    return 0;
}
