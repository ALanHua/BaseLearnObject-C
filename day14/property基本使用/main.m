//
//  main.m
//  property基本使用
//
//  Created by yhp on 16/1/24.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


int main(int argc, const char * argv[])
{
    Person * p = [Person new];
    [p setAge:20];
    [p age];
    return 0;
}
