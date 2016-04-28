//
//  Soldier.m
//  day12
//
//  Created by yhp on 16/1/19.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Soldier.h"

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