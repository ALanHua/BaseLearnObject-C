 //
//  main.m
//  对象作为返回值类型
//
//  Created by yhp on 16/1/19.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - 弹夹
@interface Clip : NSObject
{
@public
    int _bullet;//子弹
}
-(void)addBullet;
@end

@implementation Clip

-(void)addBullet
{
    //上子弹
    _bullet = 10;
}

@end
#pragma mark - 枪
@interface Gun : NSObject
{
    Clip  *clip;
}
//射击
//注意 在企业级开发中不要随意修改一个方法
-(void)shot:(Clip *)c;
@end

@implementation Gun

-(void)shot:(Clip *)c
{
    if (c != nil &&
        c->_bullet > 0)
    {
        c->_bullet -= 1;
        NSLog(@"打了一枪,%i",c->_bullet);
    }
    else
    {
        NSLog(@"no bullet");
    }
}
@end

#pragma mark - 士兵
@interface Soldier : NSObject
{
@public
    NSString *_name;
    double _height;
    double _weight;
}

-(void)fire:(Gun *)gum clip:(Clip *)clip;
@end

@implementation Soldier

//Gun *gun = gp
-(void)fire:(Gun *)gun clip:(Clip *)clip
{
    if (gun != nil &&
        clip != nil) {
        
        [gun shot:clip];
    }
    
}
@end
#pragma mark - 商店
@interface Shop : NSObject

//买枪
+(Gun *)buyGun:(int)monery;
//买弹夹
+(Clip *)buyClip:(int)monery;
@end

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
