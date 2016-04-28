//
//  main.m
//  Property修饰符
//
//  Created by yhp on 16/1/27.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
    
    Person* p = [Person new];
    Room* r = [Room new];
//    Car* c = [Car new];
//    Dog* d = [Dog new];
    
    p.room = r;
//    p.car = c;
//    p.dog = d;
//
//    [d release];
//    [c release];
//    换房
//    Room* r2 = [Room new];
//    p.room = r2;
//    [r2 release];

    [r release];
    [p release];
    
    return 0;
}
