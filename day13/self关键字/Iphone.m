//
//  Iphone.m
//  day13
//
//  Created by yhp on 16/1/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Iphone.h"

@implementation Iphone
+(void)camerawithFlashLightStatus:(FlashLightStatus)status
{
    if (status == kFlashLightStatusOpen)
    {
//        [Iphone openFlashLight];
        [self openFlashLight];
    }
    else
    {
//        [Iphone closeFlashLight];
        [self closeFlashLight];
    }
}

+(void)openFlashLight
{
    NSLog(@"打开闪光灯");
}
+(void)closeFlashLight
{
    NSLog(@"关闭闪光灯");
}
@end
