//
//  main.m
//  循环retain
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
    
//    如果A->B,B->A;
//    不要让A retain B,或者 B retain A；
    
    p.dog = d;
    d.owner = p;//直接赋值,不需要Retain
    
    [p release];
    [d release];
    
    return 0;
}
