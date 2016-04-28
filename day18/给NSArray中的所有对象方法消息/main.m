//
//  main.m
//  给NSArray中的所有对象方法消息
//
//  Created by yhp on 16/2/16.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
    Person* p1 = [Person new];
    Person* p2 = [Person new];
    Person* p3 = [Person new];
    Person* p4 = [Person new];
    
    NSArray* arr = @[p1,p2,p2,p3,p4];
    /*
    [arr enumerateObjectsUsingBlock:^(Person *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj say];
    }];
     */
//    如果使用OC数组存储数组，可以调用数组的方法让数组所有元素都执行指定方法
//    注意点：如果数组中保存的不是相同类型的数据，并且没有相同的方法，会报错
//    [arr makeObjectsPerformSelector:@selector(say)];
//    需要调用方法的参数，只能用一个参数
    [arr makeObjectsPerformSelector:@selector(sayWithName:) withObject:@"lmj"];
    
    return 0;
}
