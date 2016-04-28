//
//  main.m
//  字符串读写上
//
//  Created by yhp on 16/2/2.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    /**
     *  file  文件路径
     *  encoding  一般填写UTF-8
     *  error 错误信息
     注意；在oc方法中xxxfile，一定传递的是绝对路径
     */
//    从文件中读取
    /*
    NSString* path = @"/Users/smartwater/Downloads/yhp.txt";
    NSError* error = nil;

    NSString* str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
    if (error == nil) {
        NSLog(@"str = %@",str);
    }else{
        NSLog(@"error = %@",[error localizedDescription]);
    }
    */
//向 文件中写字符串
    /**
     *  atomically YES ---写入过程如果没有写完不会生成文件  NO---如果写入过程中没有写完会生成文件
     */

    NSString* str = @"iOS601基础班";
    NSString* path2 = @"/Users/smartwater/Downloads/abc.txt";
    BOOL flag = [str writeToFile:path2 atomically:YES encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"FLAG = %i",flag);

    
    return 0;
}
