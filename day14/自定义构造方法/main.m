//
//  main.m
//  自定义构造方法
//
//  Created by yhp on 16/1/25.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
//    Person* p = [[Person alloc] init];
//    p.age = 20;
    Person* p = [[Person alloc] initWithAge:20];
    NSLog(@"%@",p);
    
//    Person* p2 = [[Person alloc] init];
//    p2.age = 30;
    Person* p2 = [[Person alloc] initWithName:@"andy"];
    NSLog(@"%@",p2);
    
    Person* p3 = [[Person alloc] initWithAge:18 andName:@"华仔"];
    NSLog(@"%@",p3);
    
    return 0;
}
