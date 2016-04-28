//
//  Author.m
//  day15
//
//  Created by yhp on 16/1/28.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Author.h"

@implementation Author


-(void)dealloc
{
    NSLog(@"%s",__func__);
    [_name release];
    [_account release];
    [_icom release];
    
    [super dealloc];
}
@end
