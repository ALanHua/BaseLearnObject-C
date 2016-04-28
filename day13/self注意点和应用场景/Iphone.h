//
//  Iphone.h
//  day13
//
//  Created by yhp on 16/1/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef  enum
{
    kFlashLightStatusOpen,
    kFlashLightStatusClose
}FlashLightStatus;

@interface Iphone : NSObject
{
    int _cpu;
}
/**
 *  拍照闪光灯
 *
 *  @param status
 */
-(void)camerawithFlashLightStatus:(FlashLightStatus)status;
+(void)openFlashLight;
+(void)closeFlashLight;
@end
