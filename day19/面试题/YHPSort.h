//
//  YHPSort.h
//  day19
//
//  Created by yhp on 16/8/15.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YHPSort : NSObject

/**
 *  冒泡排序法
 *
 *  @param array 需要排序的数组
 */
+(void)bubbleSort:(NSMutableArray*)array;

/**
 *  插入排序法
 *
 *  @param array 需要排序的数组
 */
+(void)insertSort:(NSMutableArray*)array;

@end
