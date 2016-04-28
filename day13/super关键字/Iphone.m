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
    NSLog(@"聚焦");
    NSLog(@"人脸识别");
    //以下代码与父类相同
//    if (status == kFlashLightStatusOpen) {
//        [self openFlashLight];
//    }else {
//        [self closeFlashLight];
//    }
    //只需要super 给父类的方法发送消息
//    super在类方法中一定调用类方法，在对象方法中调用对象方法
    [super camerawithFlashLightStatus:status];
    
}
@end
