//
//  main.m
//  NSFileManager
//
//  Created by yhp on 16/2/18.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
//
    NSFileManager* manger = [NSFileManager defaultManager];
//    1,判断文件或者文件夹是否存在
    /*
//    BOOL flag =  [manger fileExistsAtPath:@"/Users/smartwater/Downloads/abc.plist"];
//    NSLog(@"flag:%i",flag);
     */
//    2,判断一个文件是否存在，并且判断是否是一个问价夹
    /*
//    注意，该方法返回值说明传入的文件或者文件夹是否存在
//    第二参数是用保存判断结果的，如果是文件夹，就会赋值为YES。不是就为NO
    BOOL dir = NO;
    BOOL flag = [manger fileExistsAtPath:@"/Users/smartwater/Downloads"  isDirectory: &dir];
    NSLog(@"flag:%i，dir =%i",flag,dir);
     */
//    3,获取文件或文件夹的属性
    /*
    NSDictionary* info = [manger attributesOfItemAtPath:@"/Users/smartwater/Downloads/abc.plist" error:nil];
    NSLog(@"%@",info);
    */
//    4,获取文件夹所有文件
//    注意，弊端，只能获取当前文件下的文件，不能获取子文件中的文件
  /*
    NSArray* res = [manger contentsOfDirectoryAtPath:@"/Users/smartwater/Downloads" error:nil];
    NSLog(@"%@",res);
    */
//     NSArray* res = [manger subpathsAtPath:@"/Users/smartwater/Downloads"];
    /*
    NSArray* res = [manger subpathsOfDirectoryAtPath:@"/Users/smartwater/Downloads"error:nil];
    NSLog(@"%@",res);
    */
//    作业，计算所有文件的所有大小
//    注意，通过attributesOfItemAtPath方法获取的文件大小不准确，所以要先获取所有文件大小，在相加
//    5，创建文件夹
//    createDirectoryAtPath,文件夹创建到什么位置
//    withIntermediateDirectories，如果指定的位置有一些文件夹不存在是否自动创建文件夹
//    attributes:指定文件夹得属性
//    error:是否创建成功
//    注意，该方法只能用于创建文件夹
    /*
   BOOL flag =  [manger createDirectoryAtPath:@"/Users/smartwater/Downloads/abc/test" withIntermediateDirectories:YES attributes:nil error:nil];
    NSLog(@"%i",flag);
    */
//    6,创建文件
//    createFileAtPath:指定文件创建出来的位置
//    contents:文件中的内容
//    attributes:文件创建出来的属性
    //NSData:二进制数据
//    注意，该方法只能用于创建文件
    NSString* str = @"i am smart";
    NSData* data = [str dataUsingEncoding:NSUTF8StringEncoding];
    [manger createFileAtPath:@"/Users/smartwater/Downloads/abc.txt" contents:data attributes:nil];
    
    return 0;
}
