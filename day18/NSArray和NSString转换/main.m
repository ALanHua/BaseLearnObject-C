//
//  main.m
//  NSArray和NSString转换
//
//  Created by yhp on 16/2/16.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
//    NSArray* arr = @[@"lnj",@"lmj",@"jjj"];
//    需求 ，用-将所有元素用-连接起来
//    1，定义一个字符串
//    2，遍历数组，取出数组中的元素，添加到可变字符串中
//    3，每次添加完毕再添加一个-
    /*
    NSMutableString* strM = [NSMutableString string];//空字符串
    for (NSString* str in arr) {
        [strM appendString:str];
        [strM appendString:@"-"];
    }
    [strM deleteCharactersInRange:NSMakeRange(strM.length-1, 1)];
    NSLog(@"strM:%@",strM);
     */
    
    /*
    NSString* str = [arr componentsJoinedByString:@"-"];
    NSLog(@"str:%@",str);
    */
//    通过一个字符串生成数组
//    也叫做字符串切割
    NSString* str = @"lnj**lmj**jjj";
    NSArray* arr = [str componentsSeparatedByString:@"**"];
    NSLog(@"arr:%@",arr);
    
    return 0;
}
