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
    /**
     * getter 和 setter 方法
     */
    int _bullet;//子弹
    int _size;
    NSString* _name;
    int _color;
    double _weight;
    
}

-(void)shot;

//提高设置和获取成员变量值
-(void)addBullet:(int)count;
-(int)getBullet;
/**
 *  setter方法
 *  1 对象方法
 *  2 没有返回值
 *  3 已set开头，并且更是变量名，首字母大写
 *  4 一定有参数
 */
-(void)setSize:(int)size;
/**
 *  getter方法
 *  1 gettter方法一定是对象方法
 *  2 一定有返回值,而且返回值与获取返回值类型一致
 *  3 方法名称 同时
 *  4 一定没参数
 */
-(int)size;
@end