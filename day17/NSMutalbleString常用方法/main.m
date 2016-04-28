//
//  main.m
//  NSMutalbleString常用方法
//
//  Created by yhp on 16/2/15.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    NSMutableString* strM = [NSMutableString stringWithFormat:@"wwww.520it.com"];
//    1,在字符串后面添加/image
    /*
    [strM appendString:@"/image"];
//    [strM appendFormat:@"/age is %i",10];
    NSLog(@"strM = %@",strM);
     */
//    2,删除字符串中的520
    /*
//    技巧,在开发中，我们经常利用rangOfString和deleteCharactersInRange方法配合起来删除指定字符串
//    2.1 先查找出520的位置
    NSRange range = [strM rangeOfString:@"520"];
//    2.2 删除520
    [strM deleteCharactersInRange:range];
    NSLog(@"strM = %@",strM);
    */
//  3,在520前面插入love这个单词
    /**
     * insertString,需要插入的字符串
     * atIndex，从哪里开始插入
     */
    /*
    NSRange range = [strM rangeOfString:@"520"];
    [strM insertString:@"love" atIndex:range.location];
    NSLog(@"strM = %@",strM);
    */
//    4,要求将字符串中的520替换成530
//    stringByReplacingOccurrencesOfString 不会修改原有字符串
//    NSString* newStr = [strM stringByReplacingOccurrencesOfString:@"520" withString:@"530"];
// 注意 ，一般情况下OC方法需要传入一个参数如果没有* ,大部分是枚举
//       一般情况情况下如果不想使用枚举值，可以传入0，代表按照系统默认方式处理
    /*
     replaceOccurrencesOfString: 需要替换的字符串
     withString：替换字符串
     options：收索的方式
     range：收索范围
     返回值：代表替换了多少个字符串
     */
    NSInteger count = [strM replaceOccurrencesOfString:@"520" withString:@"530" options:0 range:NSMakeRange(0, strM.length)];
    NSLog(@"newStr = %@",strM);
    NSLog(@"count = %lu",count);
//    NSLog(@"newStr = %@",newStr);
    
    
    return 0;
}
