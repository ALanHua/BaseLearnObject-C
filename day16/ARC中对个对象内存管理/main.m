//
//  main.m
//  ARC中对个对象内存管理
//
//  Created by yhp on 16/1/30.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[])
{
    Person* p = [[Person alloc]init];
    Dog* d = [[Dog alloc]init];
    p.dog = d;
    d.ower = p;
    
    d = nil;
    p = nil;
    return 0;
}
