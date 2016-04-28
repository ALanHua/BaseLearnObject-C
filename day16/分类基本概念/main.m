//
//  main.m
//  分类基本概念
//
//  Created by yhp on 16/1/31.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+yhp.h"
//category
/*
 方法的声明和实现
 通过category扩充方法，也分为申明和实现
 :
 @interface ClassName CategoryName
 @end
 
 */
int main(int argc, const char * argv[])
{
    Person* p = [[Person alloc]init];
    p.age = 30;
    [p say];
    [p playFootball];
    [p playbasketball];
    
    
    return 0;
}
