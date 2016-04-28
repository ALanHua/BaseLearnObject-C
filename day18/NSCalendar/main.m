//
//  main.m
//  NSCalendar
//
//  Created by yhp on 16/2/18.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
//    1，获取当前时间的时分秒
    /*
    NSDate* now = [NSDate date];
//    日历
    NSCalendar* calendar1 = [NSCalendar currentCalendar];
//    从日历类从日期中获取年月日..
//    component
//    NSDateComponents* cmps = [calendar1 components:NSCalendarUnitYear fromDate:now];
//    NSLog(@"%ld",cmps.year);
//    可以获取多个
    NSCalendarUnit type = NSCalendarUnitYear   |
                          NSCalendarUnitMonth  |
                          NSCalendarUnitDay    |
                          NSCalendarUnitHour   |
                          NSCalendarUnitMinute |
                          NSCalendarUnitSecond;
    NSDateComponents* cmps = [calendar1 components:type fromDate:now];
    NSLog(@"%ld,%ld",cmps.year,cmps.month);
    */
//    2，比较两个时间的差值
    NSString* str = @"2016-02-18 14:49:01 +0000";
    NSDateFormatter* formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss Z";
    NSDate* date = [formatter dateFromString:str];
//    NSLog(@"%@",date);
    NSDate* now = [NSDate date];
//    比较两个时间
    NSCalendar* calendar = [NSCalendar currentCalendar];
    NSCalendarUnit type = NSCalendarUnitYear   |
    NSCalendarUnitMonth  |
    NSCalendarUnitDay    |
    NSCalendarUnitHour   |
    NSCalendarUnitMinute |
    NSCalendarUnitSecond;
    NSDateComponents* cmps = [calendar components:type fromDate:date toDate:now options:0];
    NSLog(@"%ld,%ld,%ld,%ld,%ld,%ld",cmps.year,cmps.month,cmps.day,cmps.hour,
          cmps.minute,cmps.second);
    
    
    return 0;
}
