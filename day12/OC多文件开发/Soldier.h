//
//  Soldier.h
//  day12
//
//  Created by yhp on 16/1/19.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gun.h"


@interface Soldier : NSObject
{
@public
    NSString *_name;
    double _height;
    double _weight;
}

-(void)fire:(Gun *)gum clip:(Clip *)clip;
@end
