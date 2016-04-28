//
//  main.m
//  self注意点和应用场景
//
//  Created by yhp on 16/1/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iphone.h"

int main(int argc, const char * argv[]) {
    
//    [Iphone camerawithFlashLightStatus:kFlashLightStatusOpen];
    Iphone* p = [Iphone new];
    [p camerawithFlashLightStatus:kFlashLightStatusOpen];
    return 0;
}
