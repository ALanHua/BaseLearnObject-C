//
//  main.m
//  #pragmamark基本使用
//
//  Created by yhp on 16/1/19.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 士兵
 属性：name height weight
 行为：打枪，打电话
 抢
 属性：弹夹，型号
 行为：上弹夹
 弹夹
 属性：子弹
 行为：上子弹
 */
//#pragma mark 枪
#pragma mark - 枪
@interface Gun : NSObject
{
@public
    int _bullet;//子弹
    
}
//射击
-(void)shot;
@end

@implementation Gun
-(void)shot
{
    if (_bullet > 0) {
        NSLog(@"打了一枪,%i",_bullet);
        _bullet--;
    }else {
        NSLog(@"no bullet");
    }
    
}
@end

//#pragma mark 士兵
#pragma mark - 士兵
@interface Soldier : NSObject
{
@public
    NSString *_name;
    double _height;
    double _weight;
}
-(void)fire:(Gun *)g;
@end

@implementation Soldier

//Gun *gun = gp
-(void)fire:(Gun *)g
{
    [g shot];
}

@end

//#pragma mark 程序入口
#pragma mark - 程序入口
int main(int argc, const char * argv[])
{
    Soldier* sp = [Soldier new];
    sp->_name = @"小明";
    sp->_height = 1.88;
    sp->_weight =  100;
    
    //穿件抢
    Gun *gp = [Gun new];
    gp->_bullet = 10;
    //对象作为函数传递
    [sp fire:gp];
    [sp fire:gp];
    [sp fire:gp];
    
    return 0;
}

