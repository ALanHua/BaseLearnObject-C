//
//  KLine.h
//  day13
//
//  Created by yhp on 16/1/20.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KLine : NSObject
{
    int _max;
    int _min;
    int _average;//自读属性
}
/**
 *  setter 方法
 */
-(void)setMax:(int)max;
-(void)setMin:(int)min;

/**
 *  getter 方法
 */
-(int)max;
-(int)min;
-(int)average;


@end
