//
//  Gun.h
//  day13
//
//  Created by yhp on 16/1/20.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Gun : NSObject
{
//    @public
    int _bullet;//子弹
    //内部可以访问
}

-(void)shot;

//提高设置和获取成员变量值
-(void)addBullet:(int)count;
-(int)getBullet;
@end
