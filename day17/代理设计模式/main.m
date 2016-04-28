//
//  main.m
//  代理设计模式
//
//  Created by yhp on 16/2/1.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Baby.h"
#import "Nanny.h"
#import "Student.h"
#import "Teacher.h"
#import "Dog.h"

int main(int argc, const char * argv[])
{
//    1
    Baby* b = [[Baby alloc]init];
//    2
//    Nanny* n = [[Nanny alloc]init];
//    3
//    b.nanny = n;
//    4
//    Student* stu = [[Student alloc]init];
//    b.nanny = stu;
    Dog* d = [[Dog alloc]init];
    b.nanny = d;
    
    
    [b food];
    [b sleep];
    return 0;
}
