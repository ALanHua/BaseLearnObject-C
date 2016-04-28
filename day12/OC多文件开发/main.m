//
//  main.m
//  OC多文件开发
//
//  Created by yhp on 16/1/19.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shop.h"
#import "Soldier.h"

#pragma mark - 程序入口
int main(int argc, const char * argv[])
{
    // 1
    Soldier* sp = [Soldier new];
    sp->_name = @"小明";
    sp->_height = 1.88;
    sp->_weight =  100;
    
    //2 购买手枪
    Gun *gp = [Shop buyGun:888];
    //3 购买弹夹
    Clip *clip = [Shop buyClip:100];
    //4 开枪
    [sp fire:gp clip:clip];
    
    
    return 0;
}