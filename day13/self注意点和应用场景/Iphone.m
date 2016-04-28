//
//  Iphone.m
//  day13
//
//  Created by yhp on 16/1/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Iphone.h"

@implementation Iphone

/**
 * self 在对象方法中，self就代表当前调用该对象方法的对象
 * self 在类方法中，self就代表当前那个类
 * 关注self在那个方法中
 * self 会自动区分是类还是对象
 
 使用场景：
 可以用于对象方法之间的调用
 可以用于类方法之间相互调用
 
 可以用于区分
 */
-(void)camerawithFlashLightStatus:(FlashLightStatus)status
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

-(void)openFlashLight
{
    NSLog(@"打开闪光灯");
}
-(void)closeFlashLight
{
    NSLog(@"关闭闪光灯");
}
@end
