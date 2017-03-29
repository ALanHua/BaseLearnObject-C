//
//  YHPQuickSort.m
//  day20
//
//  Created by yhp on 2017/3/28.
//  Copyright © 2017年 YouHuaPei. All rights reserved.
//

#import "YHPQuickSort.h"

@implementation YHPQuickSort

/**
 [49,38,65,97,76,13,27]
 */
+(void)quickSortWithArray:(NSMutableArray*)array withLeft:(NSInteger)left andRight:(NSInteger)right
{
    if(left >= right){
        return;
    }
    NSInteger i     = left;  // 0
    NSInteger j     = right; // 6
    NSInteger key   = [array[left] integerValue]; // 49
    
    while (i < j) {
        for (; i < j && key <= [array[j] integerValue]; j--);
        array[i] = array[j];
        /*
         i=0,j = 6, [27,38,65,97,76,13,27]
         i=2,j = 5, [27,38,13,97,76,13,65]
         */
        for (; i < j && key >= [array[i] integerValue]; i++);
        array[j] = array[i];
        /*
         i=2,j =6,[27,38,65,97,76,13,65]
         i=3,j =5,[27,38,13,97,76,97,65]
         */
    }
    array[i] = @(key);
    /*
     [27,38,13,49,76,97,65]
     */
    [[self class] quickSortWithArray:array withLeft:left andRight:i-1];
    [[self class] quickSortWithArray:array withLeft:i + 1 andRight:right];
    
}

@end
