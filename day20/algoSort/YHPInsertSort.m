//
//  YHPInsertSort.m
//  day20
//
//  Created by yhp on 2017/3/22.
//  Copyright © 2017年 YouHuaPei. All rights reserved.
//

#import "YHPInsertSort.h"

@implementation YHPInsertSort


+(void)insertSort:(NSMutableArray*)list
{
    for (int i = 1; i < list.count; i++) {
        NSInteger target = [list[i] integerValue];
        int j;
        for ( j= i - 1; j >= 0; j --) {
            if ([list[j] integerValue] > target) {
                [list replaceObjectAtIndex:j+1 withObject:[list objectAtIndex:j]];
            }else{
                break;
            }
        }
        [list replaceObjectAtIndex:j+1 withObject:@(target)];
    }
}

+(void)binaryInsertSort:(NSMutableArray*)list
{
    for (int i = 1; i < list.count; i++){
        NSInteger target = [list[i] integerValue];
        int left  = 0;
        int right = i - 1;
        while (left <= right) {
            int middle = (left + right) / 2;
            NSInteger temp = [list[middle] integerValue];
            if (target < temp) {
                right = middle -1;
            }else{
                left = middle + 1;
            }
        }
        
        for (int j = i; j > left; j--) {
            [list replaceObjectAtIndex:j withObject:[list objectAtIndex:j - 1]];
        }
        [list replaceObjectAtIndex:left withObject:@(target)];
    }
    
}

@end
