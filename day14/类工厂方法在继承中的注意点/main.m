//
//  main.m
//  类工厂方法在继承中的注意点
//
//  Created by yhp on 16/1/25.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[])
{
//    Student* stu = [Student person];
//    Person* p = [Person person];
////    NSLog(@"%i",stu.age);
//    stu.no = 888;
//    NSLog(@"%i",stu.no);
    Student* stu = [Student personWithAge:30];
    stu.no = 888;
    NSLog(@"%i",stu.no);
    
    return 0;
}
