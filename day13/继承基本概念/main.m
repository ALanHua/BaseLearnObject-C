//
//  main.m
//  继承基本概念
//
//  Created by yhp on 16/1/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iphone.h"
#import "Android.h"

int main(int argc, const char * argv[])
{
    /**
     *  当前代码存在代码太多
     */
    Iphone *p = [Iphone new];
    [p signalWithNumber:@"1234566"];
    
    Android * a = [Android new];
    [a signalWithNumber:@"28839892"];
    
    [p setCpu:100];
    NSLog(@"cpu: %i",[p cpu]);
    [a setCpu:200];
    NSLog(@"cpu: %i",a.cpu);
    return 0;
}
