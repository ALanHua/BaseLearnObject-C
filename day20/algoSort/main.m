//
//  main.m
//  algoSort
//
//  Created by yhp on 2017/3/22.
//  Copyright © 2017年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YHPInsertSort.h"
#import "YHPQuickSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray* list = [NSMutableArray arrayWithArray:@[@3,@1,@8,@9,@100,@2]];
       // [YHPInsertSort binaryInsertSort:list];
        [YHPQuickSort quickSortWithArray:list withLeft:0 andRight:list.count -1];
        NSLog(@"%@",list);
        
    }
    return 0;
}
