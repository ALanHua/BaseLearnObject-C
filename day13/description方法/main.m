//
//  main.m
//  description方法
//
//  Created by yhp on 16/1/22.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

// description
int main(int argc, const char * argv[])
{
    Person *p = [Person new];
    [p setAge:30];
    [p setName:@"andy"];
    [p setHeight:1.75];
    [p setHeight:65];
    [p setTel:@"2676726"];
    [p setEmail:@"andy.cc"];
    
//    NSLog(@"age:%i ,name:%@",[p age],[p name]);
    //%@ 打印对象 <类名称 类地址>
    NSLog(@"Person:%@",p);
    //返回当前类对象
    NSLog(@"%@",[Person class]);
    NSLog(@"Person:%p",p);
    return 0;
}
