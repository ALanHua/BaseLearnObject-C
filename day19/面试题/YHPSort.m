//
//  YHPSort.m
//  day19
//
//  Created by yhp on 16/8/15.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "YHPSort.h"

@implementation YHPSort

+(void)bubbleSort:(NSMutableArray*)array
{
    NSInteger i,j;
    for (i = 0; i < array.count - 1; i++) {
        for (j = array.count - 1; j > i; j--) {
            if ([[array objectAtIndex:j]intValue] < [[array objectAtIndex:j-1]intValue]) {
                [array exchangeObjectAtIndex:j withObjectAtIndex:j-1];
            }
        }
    }
}
@end
