//
//  Person.m
//  day17
//
//  Created by yhp on 16/2/1.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"
#import "Wife.h"

@implementation Person

-(void)show
{
//每次调用协议方法需要进行安全判断
    if ([self.wife respondsToSelector:@selector(cooking)]) {
        [self.wife cooking];
    }
    
    if ([self.wife respondsToSelector:@selector(washing)]) {
        [self.wife washing];
    }

    if ([self.wife respondsToSelector:@selector(job)]) {
        [self.wife job];
    }
    
}

@end
