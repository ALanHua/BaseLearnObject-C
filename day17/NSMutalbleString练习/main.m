//
//  main.m
//  NSMutalbleString练习
//
//  Created by yhp on 16/2/15.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    /**
     *  需求，将三个520拼接在一起，中间用空格隔开
     520it 520it 520it
     */
    NSString* subStr = @"520it";
    /*
//    520it-
    NSString* newStr =[subStr stringByAppendingString:@" "];
//    520it-520it
    newStr = [newStr stringByAppendingString:subStr];
//    520it-520it-
    newStr = [newStr stringByAppendingString:@" "];
//    520it-520it-520it
     newStr = [newStr stringByAppendingString:subStr];
     */
    /*
//     在开发中如果要对字符串频繁操作，不要使用不可变字符串
    NSString* newStr = [subStr stringByAppendingString:@" "];
    for (int i = 0; i < 2; i++) {
        newStr = [newStr stringByAppendingString:subStr];
        newStr = [newStr stringByAppendingString:@" "];
    }
//    newStr = [newStr stringByReplacingCharactersInRange:NSMakeRange(newStr.length-1, 1) withString:@""];
    newStr = [newStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSLog(@"newStr :%@",newStr);
    */
    NSMutableString* strM = [NSMutableString string];//空字符串
    for (int i = 0; i < 3; i++) {
//        1 添加520it
        [strM appendString:subStr];
//        2 添加空格
        [strM appendString:@" "];
    }
    [strM deleteCharactersInRange:NSMakeRange(strM.length-1, 1)];
     NSLog(@"strM :%@",strM);
    return 0;
}
