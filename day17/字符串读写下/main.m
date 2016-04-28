//
//  main.m
//  字符串读写下
//
//  Created by yhp on 16/2/3.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
//    1,文件读取
    /*
//    NSString* path = @"file://192.168.0.101/Users/smartwater/Downloads/yhp.txt";
  
//    注意点：如果加载的资源是本机上，那么URL重主机地址可以省略
//    虽然主机地址可以省略，但是文件路径最前的斜杠不能省略
//    NSString* path = @"http://wwww.baidu.com";
    NSString* path = @"file:///Users/smartwater/Downloads/测试/yhp.txt";
//    NSURL* url = [NSURL URLWithString:path];
//    NSString* path = @"/Users/smartwater/Downloads/yhp.txt";
//  注意，如果是通过filewithPath,系统会自动天机协议头，所以不需要创建file://
//    注意，开发中如果是访问本机资源，创建URL一般使用fileURLWithPath,因为URL不支持中文，而fileURLWithPath支持
//    系统内部会对包含的中文进行处理，如果URL包含中文，而不是使用sfileWithStringPath
//    也可以想办法处理，就必须在创建URL之前对字符串中的中文处理
//    NSURL* url = [NSURL fileURLWithPath:path];
    path = [path stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL* url = [NSURL URLWithString:path];
    NSLog(@"%@",url);
    
    NSString* str = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"str = %@",str);
    */
//    2，文件写入
    NSString* str = @"yhp is smart";
    BOOL flag;
    NSString* path =@"/Users/smartwater/Downloads/abc.txt";
    NSURL* url = [NSURL fileURLWithPath:path];
    
    flag = [str writeToURL:url atomically:YES encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"flag :%i",flag);
//    注意点，多次写入，后一次的会覆盖前一次的
    NSString* str2 = @"abcdef";
    flag = [str2 writeToURL:url atomically:YES encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"flag :%i",flag);
    
    return 0;
}
