//
//  main.m
//  自定义构造方法在继承中的表现
//
//  Created by yhp on 16/1/25.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[])
{
    
//    Student* stu = [[Student alloc] initWithAge:18 andName:@"andy"];
    Student* stu = [[Student alloc] initWithAge:18 andName:@"andy" andNo:1];
    NSLog(@"%@",stu);
    
    return 0;
}
