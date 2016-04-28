//
//  main.m
//  字符串搜索
//
//  Created by yhp on 16/2/3.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
//    NSString* str = @"http://wwww.520it.com/img/lmj.gif";
//    1,前缀
    /*
    if ([str hasPrefix:@"http://"]) {
        NSLog(@"是一个URL");
    }else{
        NSLog(@"不是一个URL");
    }
     */
//    2,后最
    /*
    if([str hasSuffix:@".gif"]){
        NSLog(@"动态图片");
    }else{
       NSLog(@"不是动态图片");
    }
    */
//   3,判断字符串520it.com
    /*
//    只要包含该字符串，那么就会返回盖字符串在str中的起始位置以及该字符串的长度
//    如果没有要查找的字符串，返回值是location是NotFound，length = 0
    NSString* str = @"abcd";
    NSRange range = [str rangeOfString:@"bc"];
    if (range.location == NSNotFound || range.length == 0) {
        NSLog(@"str中没有要找的字符串");
    }else{
        NSLog(@"location:%lu,length:%lu",range.location,range.length);
    }
     */
    
    
    return 0;
}
