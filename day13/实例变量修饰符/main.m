//
//  main.m
//  实例变量修饰符
//
//  Created by yhp on 16/1/22.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


int main(int argc, const char * argv[])
{
    Person *p = [Person new];
    p->_age = 30;
//    p->_name = @"andy";
    
    return 0;
}
