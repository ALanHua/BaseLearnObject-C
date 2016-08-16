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

+(void)insertSort:(NSMutableArray*)array
{
    NSInteger i,j,key;
    for (i = 1; i < array.count; i++) {
        key = [[array objectAtIndex:i]intValue];
        for (j = i; j > 0; j--) {
            if ([[array objectAtIndex:j-1]intValue] > key) {
                [array exchangeObjectAtIndex:j withObjectAtIndex:j-1];
            }else{
                break;
            }
        }
        [array replaceObjectAtIndex:j withObject:@(key)];
    }
}
@end
