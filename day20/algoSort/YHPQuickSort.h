//
//  YHPQuickSort.h
//  day20
//
//  Created by yhp on 2017/3/28.
//  Copyright © 2017年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YHPQuickSort : NSObject

// 快熟排序
+(void)quickSortWithArray:(NSMutableArray*)array withLeft:(NSInteger)left andRight:(NSInteger)right;

@end
