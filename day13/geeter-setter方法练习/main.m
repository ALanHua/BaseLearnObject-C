//
//  main.m
//  geeter-setter方法练习
//
//  Created by yhp on 16/1/20.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KLine.h"

int main(int argc, const char * argv[])
{
    KLine* line = [KLine new];
    [line setMax:200];
    [line setMin:100];
    
    NSLog(@"max:%i,min:%i,acerage:%i", [line max]
          ,[line min],[line average]);
    
    return 0;
}
