//
//  main.m
//  NSMutalbleString基本概念
//
//  Created by yhp on 16/2/15.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[])
{
    /*
    NSString* str = @"lnj";//一开始指向“lmj”对应的内存
    str = @"lmj";//修改了str指针的指向，让它指向@“lmj”对应的内存
    
    NSString* newStr = [str stringByReplacingOccurrencesOfString:@"l" withString:@"X"];
    NSLog(@"%@",newStr);
    */
//    可变字符串
    
//    创建一个空字符串
    NSMutableString *str = [NSMutableString string];
    NSLog(@"修改前:%@",str);
    [str appendString:@"yhp"];
    NSLog(@"修改后:%@",str);
    
    NSMutableString* strM = [[NSMutableString alloc]init];
//    strM = [NSMutableString alloc]initWithFormat:<#(nonnull NSString *), ...#>
//    strm = [NSMutableString stringWithUTF8String:<#(nonnull const char *)#>]
    
    return 0;
}
