//
//  main.m
//  结构体作为对象的属性
//
//  Created by yhp on 16/1/17.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  学生
 *  属性：姓名 生日
 *  行为：说出姓名，生日
 */
typedef struct {
    int year;
    int month;
    int day;
}Date;

@interface Student : NSObject
{
    @public
    NSString *_name;
    Date _birthday;
}

-(void)say;
@end

@implementation Student

-(void)say
{
    NSLog(@"name:%@,year:%i,month:%i,day:%i",
          _name,_birthday.year,_birthday.month,_birthday.day);
}

@end

int main(int argc, const char * argv[])
{
    
    Student *stu = [Student new];
    stu->_name = @"yhp";
    //结构体只能在定义的时候初始化
    stu->_birthday = (Date){1990,8,05};//copy 一份
    [stu say];
    
    return 0;
}
