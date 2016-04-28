//
//  main.m
//  协议注意事项
//
//  Created by yhp on 16/2/1.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "Teacher.h"

int main(int argc, const char * argv[])
{
    Person* p = [[Person alloc]init];
    [p playBasketball];
    [p study];
    
    Student* stu = [[Student alloc]init];
    [stu playBasketball];
    
    
    return 0;
}
