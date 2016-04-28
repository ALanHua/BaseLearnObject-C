//
//  main.m
//  self关键字
//
//  Created by yhp on 16/1/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iphone.h"

int main(int argc, const char * argv[])
{
//    self不能离开我们的类
    [Iphone camerawithFlashLightStatus:kFlashLightStatusOpen];
    
    return 0;
}
