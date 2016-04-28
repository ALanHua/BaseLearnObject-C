//
//  Person.h
//  day15
//
//  Created by yhp on 16/1/27.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Room.h"

@interface Person : NSObject
{
    Room* _room;
}

-(void)setRoom:(Room*)room;
-(Room*)room;
@end
