//
//  main.m
//  NSDate
//
//  Created by yhp on 16/2/18.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
//    1,NSDate的创建和基本概念
//    只要是date方法创建，保存的是当前时间
    /*
    NSDate* now = [NSDate date];
    NSLog(@"now = %@",now);
//    在now的基础上追加多少秒
//    NSDate* date = [now dateByAddingTimeInterval:10];
//    NSLog(@"now = %@",date);
//    1 获取当前所处的时区
    NSTimeZone* zone = [NSTimeZone systemTimeZone];
//    2,获取当前时区和指定时间的时间差
    NSInteger second = [zone secondsFromGMTForDate:now];
//    NSLog(@"%lu",second);
    NSDate* newNow = [now dateByAddingTimeInterval:second];
    NSLog(@"now = %@",newNow);
    */
//    2 时间格式化
    /*
    NSDate* now = [NSDate date];
//    创建一个时间格式化
    NSDateFormatter* formatter = [[NSDateFormatter alloc]init];
//    告诉时间格式化对象按照什么格式格式花时间
//    yyyy-> 年,MM->月，dd->日。HH->24小时(hh->12小时)，mm->分,ss->秒
    formatter.dateFormat = @"yyyy年MM月dd日 HH时mm分ss秒 Z";
    //    利用时间格式化对象对时间进行格式化
    NSString* res = [formatter stringFromDate:now];
    NSLog(@"%@",res);
    */
    
// NSString --> NSDate
    NSString* str = @"2016-02-18 14:49:01 +0000";
    NSDateFormatter* formatter = [[NSDateFormatter alloc]init];
//    注意，字符串的格式必须与格式化一致
    formatter.dateFormat = @"yyyy-MM-dd HH:dd:ss Z";
    NSDate* date = [formatter dateFromString:str];
    NSLog(@"%@",date);
    
    return 0;
}
