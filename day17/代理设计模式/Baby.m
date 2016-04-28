//
//  Baby.m
//  day17
//
//  Created by yhp on 16/2/1.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Baby.h"
//#import "Nanny.h"

@implementation Baby

-(void)food
{
    self.hungry += 5;
    NSLog(@"要吃东西：%i",self.hungry);
    if ([self.nanny respondsToSelector:@selector(feedFood:)]) {
        [self.nanny feedFood:self];
    }
}

-(void)sleep
{
    self.sleepy += 5;
    NSLog(@"困了:%i",self.sleepy);
    if ([self.nanny respondsToSelector:@selector(hongBaby:)]) {
        [self.nanny hongBaby:self];
    }

}

@end
