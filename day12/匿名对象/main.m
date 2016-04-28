//
//  main.m
//  匿名对象
//
//  Created by yhp on 16/1/19.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#include "Iphone.h"

int main(int argc, const char * argv[])
{
    //1,有名字的对象
    Person* p =[Person new];
    p->_age = 30;
    p->_name = @"小明";
    [p say];
    //2,没有名字的对象
    [Person new]->_age = 30;
    [Person new]->_name = @"米米";
    [[Person new] say ];
    //3 匿名对象的应用场景
    [[Iphone new] brand];
    //4 匿名对象可以作为方法的实参
    Person *p1 = [Person new];
    [p1 signale:[Iphone new]];
    
    return 0;
}
