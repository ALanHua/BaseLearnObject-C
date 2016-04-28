//
//  Gun.m
//  day12
//
//  Created by yhp on 16/1/19.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Gun.h"

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