//
//  Shop.h
//  day12
//
//  Created by yhp on 16/1/19.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h> 
#import "Gun.h"

@interface Shop : NSObject

//买枪
+(Gun *)buyGun:(int)monery;
//买弹夹
+(Clip *)buyClip:(int)monery;
@end
