//
//  main.m
//  instancetype和id区别
//
//  Created by yhp on 16/1/25.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


int main(int argc, const char * argv[])
{
//    Person* p = [[Person alloc] init];
//    [p setAge:99];
//    NSString* str = [[Person alloc] init];
//    NSInteger lenghth = [str length];
//    NSLog(@"lenght: %lu",lenghth);
    id p = [[Person alloc] init];
//    instancetype p1 = [[Person alloc] init];//error
    return 0;
}
