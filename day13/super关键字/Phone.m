//
//  Phone.m
//  day13
//
//  Created by yhp on 16/1/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Phone.h"

@implementation Phone

+(void)camerawithFlashLightStatus:(FlashLightStatus)status
{
    if (status == kFlashLightStatusOpen)
    {
        //        self 还可以调用对象方法
        [self openFlashLight];
    }
    else
    {
        NSLog(@"%p",self);
        [self closeFlashLight];
    }
}

+(void)openFlashLight
{
    NSLog(@"打开闪光灯");
}
-(void)closeFlashLight
{
    NSLog(@"关闭闪光灯");
}
@end
