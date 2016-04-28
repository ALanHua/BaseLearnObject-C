//
//  main.m
//  synthesize基本使用
//
//  Created by yhp on 16/1/24.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


int main(int argc, const char * argv[])
{
    Person* p = [Person new];
    
    [p setAge:80];
    
//    NSLog(@"age = %i",[p age]);
    NSLog(@"_age = %i,age = %i",p->_age,p->age);
    return 0;
}
