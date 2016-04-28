//
//  Shop.m
//  day12
//
//  Created by yhp on 16/1/19.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Shop.h"

@implementation Shop

+(Gun *)buyGun:(int)monery
{
    //1，创建一把枪
    Gun *gun = [Gun new];
    //2，返回一把枪
    return gun;
}

+(Clip *)buyClip:(int)monery
{
    Clip *clip = [Clip new];//new 出来的对象存在堆中，不会消失
    [clip addBullet];
    
    return clip;
}

@end
