//
//  Account.m
//  day15
//
//  Created by yhp on 16/1/28.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Account.h"

@implementation Account

-(void)dealloc
{
    NSLog(@"%s",__func__);
    [_email release];
    [_pwd release];
    
    [super dealloc];
}

@end
