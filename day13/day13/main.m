//
//  main.m
//  day13
//
//  Created by yhp on 16/1/20.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gun.h"

int main(int argc, const char * argv[])
{
    //1,创建一把枪
    Gun *gun = [Gun new];
    //2，设置枪的子弹数量
    [gun addBullet:200];
    //3，射击
    [gun shot];
    
//    NSLog(@"%i",gun->_bullet);
    NSLog(@"%i",[gun getBullet]);
    return 0;
    
}
