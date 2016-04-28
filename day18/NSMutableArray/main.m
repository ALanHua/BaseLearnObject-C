//
//  main.m
//  NSMutableArray
//
//  Created by yhp on 16/2/16.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    /*
//    创建空数组
    NSMutableArray* arrM = [NSMutableArray array];
//    如何添加
    [arrM addObject:@"lnj"];
//    将指定数组中的元素都取出来放到arrM中，不不是将整个数组作为一个元素添加到数组中
    [arrM addObjectsFromArray:@[@"lmj",@"jjj"]];
    NSLog(@"%@",arrM);
//    如何插入
    [arrM insertObject:@"yhp" atIndex:1];
    NSLog(@"%@",arrM);
    NSIndexSet* set = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, 2)];
//    插入一组数据，指定数据位置和，数据个数
    [arrM insertObjects:@[@"A",@"B"] atIndexes:set];
    NSLog(@"%@",arrM);
//    如何删除
    [arrM removeObjectAtIndex:0];
    NSLog(@"%@",arrM);
    [arrM removeLastObject];
    NSLog(@"%@",arrM);
    [arrM removeObject:@"A"];
    NSLog(@"%@",arrM);
//    如何替换
    [arrM replaceObjectAtIndex:1 withObject:@"M"];
    NSLog(@"%@",arrM);
//    如何获取
    NSLog(@"%@",[arrM objectAtIndex:0]);
    NSLog(@"%@",arrM[0]);
    arrM[0] = @"zs";
    NSLog(@"%@",arrM);
    */
//    注意不能通过@[]创建可变数组，如果把一个不可变当成可变，会引发运行时错误
//    NSMutableArray* arrM = @[@"111",@"983"];
    
    
    return 0;
}
