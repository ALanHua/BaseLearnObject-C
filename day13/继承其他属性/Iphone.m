//
//  Iphone.m
//  day13
//
//  Created by yhp on 16/1/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Iphone.h"

@implementation Iphone

-(void)setCpu:(int)cpu
{
    _cpu = cpu;
}
-(int)cpu
{
    return _cpu;
}
-(void)signalWithNumber:(NSString*)number
{
    NSLog(@"Iphone  call :%@",number);
}
@end
