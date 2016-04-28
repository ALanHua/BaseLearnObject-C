//
//  main.m
//  self关键字2
//
//  Created by yhp on 16/1/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iphone.h"

int main(int argc, const char * argv[]) {
    
    Iphone *p = [Iphone new];
    NSLog(@"%p",p);
    [p camerawithFlashLightStatus:kFlashLightStatusClose];
    return 0;
}
