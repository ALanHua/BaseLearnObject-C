//
//  Person.m
//  day15
//
//  Created by yhp on 16/1/27.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person

//如果要使用B对象，一定要对B对象的引用计数加1
//A对象释放的时候，也要对B对象进行释放
//有增就有减
-(void)setRoom:(Room*)room
{
//    只有房间不同
    if (_room != room) {
        [_room release];
//        优化
//        [room retain];
//        _room = room;
        _room =  [room retain];
    }

}

-(Room*)room
{
    return _room;
}

-(void)dealloc
{
//    人释放了，房间也要释放
    [_room release];
    NSLog(@"%s",__func__);
    [super dealloc];
}

@end
