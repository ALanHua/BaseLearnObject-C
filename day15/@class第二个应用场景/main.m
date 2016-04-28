//
//  main.m
//  @class第二个应用场景
//
//  Created by yhp on 16/1/28.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[])
{
    Person* p = [[Person alloc] init];
    Dog* d = [[Dog alloc] init];
    p.dog = d;
    
    [p release];
    [d release];
    
    return 0;
}
