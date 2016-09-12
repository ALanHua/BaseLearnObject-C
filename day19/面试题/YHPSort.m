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
    
}

+(void)insertSort:(NSMutableArray*)array
{
    
}

+(void)selectSort:(NSMutableArray*)array
{
    NSInteger i,j,minIndex;
    
    for (i = 0; i < array.count - 1; i++) {
        minIndex = i;
        for (j = i + 1; j < array.count; j++) {
            if ([array objectAtIndex:j] < [array objectAtIndex:minIndex]) {
                minIndex = j;
            }
        }
        if (minIndex != i) {
            [array exchangeObjectAtIndex:minIndex withObjectAtIndex:i];
        }
    }
}

@end
