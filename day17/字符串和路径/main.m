//
//  main.m
//  字符串和路径
//
//  Created by yhp on 16/2/15.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    NSString* str = @"/Users/smartwater/Downloads/abc.txt";
//    1,判断是不是绝对路径
    /*
//     其实本质就是判断字符串是否已斜线开头
    if([str isAbsolutePath]){
        NSLog(@"是绝对路径");
    }else{
        NSLog(@"不是绝对路径");
    }
    */
//    2,获取文件路径中的最后一个目录
//    本质获取最后一个/后面的内容
    /*
     NSString* newStr = [str lastPathComponent];
     NSLog(@"newStr :%@",newStr);
    */
//    3，删除文件路径中的最后一个目录
    /*
    NSString* newStr = [str stringByDeletingLastPathComponent];
    NSLog(@"newStr :%@",newStr);
     */
//    4，给文件路径添加一个目录
    //    本质是在字符串末尾加上/指定内容
    //    注意：如果路径后面已经有了/，就不会添加了,
    //         如果路径后面有多个/，那么会自动删除多余的/，只保留一个
    /*
     NSString* newStr = [str stringByAppendingPathComponent:@"yhp"];
     NSLog(@"newStr :%@",newStr);
     */
//    5,获取路径中文件的扩展名
//    本质就是从字符串末尾开始查找，截取第一个.后面的内容
    /*
    NSString* newStr = [str pathExtension];
    NSLog(@"newStr: %@",newStr);
     */
//    6，删除路径中文件的扩展名
//    本质就是从字符串的末尾开始查找，删除第一个.和。后面的内容
    /*
    NSString* newStr = [str stringByDeletingPathExtension];
    NSLog(@"newStr: %@",newStr);
    */
//    7，给文件路径添加一个扩展名
//    本质就是在字符串末尾添加一个.和指定内容
    NSString* newStr = [str stringByAppendingPathExtension:@"jpg"];
    NSLog(@"newStr: %@",newStr);
    
    return 0;
}
