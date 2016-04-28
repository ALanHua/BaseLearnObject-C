//
//  KLine.m
//  day13
//
//  Created by yhp on 16/1/20.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "KLine.h"

@implementation KLine
-(void)setMax:(int)max
{
//    setter方法好处可以监听属性的变化
    _max = max;
    _average = (_min + _max) / 2 ;
}
-(void)setMin:(int)min
{
    _min = min;
    _average = (_min + _max) / 2 ;
}

-(int)max
{
    return _max;
}
-(int)min
{
    return _min;
}
-(int)average
{
    return _average;
}
@end
