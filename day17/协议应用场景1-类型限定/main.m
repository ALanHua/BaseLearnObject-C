//
//  main.m
//  协议应用场景1-类型限定
//
//  Created by yhp on 16/2/1.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Wife.h"
#import "WifeProtocol.h"
int main(int argc, const char * argv[])
{
    Person* p = [[Person alloc]init];
//    1,协议的一个应用场景，可以将协议写在数据类型右边,赋值的对象必须遵守协议
    Wife<WifeProtocol>* w = [[Wife alloc]init];
    p.wife = w;
    [p show];
    
    return 0;
}
