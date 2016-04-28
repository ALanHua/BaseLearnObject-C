//
//  NSString+YHP.m
//  day16
//
//  Created by yhp on 16/1/31.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "NSString+YHP.h"

@implementation NSString (YHP)

+(int)countWithString:(NSString*)str
{
    int count;
    for (int i = 0; i < str.length; i++) {
        unichar c = [str characterAtIndex:i];
        if (c >= '0' && c <= '9') {
            count++;
        }
    }
    return count;
}

-(int)count
{
    int number = 0;
    for (int i = 0; i < self.length; i++) {
        unichar c = [self characterAtIndex:i];
        if (c >= '0' && c <= '9') {
            number++;
        }
    }
    
    return number;
}

@end
