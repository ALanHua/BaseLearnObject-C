//
//  Phone.h
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

@interface Phone : NSObject


+(void)camerawithFlashLightStatus:(FlashLightStatus)status;
+(void)openFlashLight;
+(void)closeFlashLight;

@end
