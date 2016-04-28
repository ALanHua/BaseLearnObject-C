//
//  Person.m
//  day15
//
//  Created by yhp on 16/1/27.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person

/*
-(void)setRoom:(Room*)room
{
    if (_room != room) {
        [_room release];
        _room = [room retain];
    }

}

-(void)setCar:(Car*)car
{
    if (_car != car) {
        [_car release];
        _car = [_car retain];
    }
}

-(void)setDog:(Dog*)dog
{
    if (_dog != dog) {
        [_dog release];
        _dog = [dog retain];
    }
}

//getter
-(Room*)room
{
    return  _room;
}

-(Car*)car
{
    return _car;
}

-(Dog*)dog
{
    return _dog;
}
*/

-(void)dealloc
{
    [_room release];
    [_car release];
    [_dog release];
    
    NSLog(@"%s",__func__);
    [super dealloc];
}

@end
