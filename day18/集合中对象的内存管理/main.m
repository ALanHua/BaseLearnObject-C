//
//  main.m
//  集合中对象的内存管理
//
//  Created by yhp on 16/2/20.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        /*
//        注意点：如果将一个对象添加到数组，那么数组会对对象进行一次retain
        Person* p = [Person new];
        NSLog(@"retainCount:%lu",[p retainCount]);
        NSMutableArray* arrM = [[NSMutableArray alloc]init];//空数组]
        [arrM addObject:p];
        NSLog(@"retainCount:%lu",[p retainCount]);
        [p release];
        NSLog(@"retainCount:%lu",[p retainCount]);
//       数组释放后会给所有的数组中元素发送一条release消息
        [arrM release];
        */
        Person* p = [Person new];
        NSLog(@"retainCount:%lu",[p retainCount]);
        NSMutableArray* arrM = [[NSMutableArray alloc]init];//空数组]
        [arrM addObject:p];
        NSLog(@"retainCount:%lu",[p retainCount]);
        
        [p release];
//        当数组移除一个对象会给对象发送一个Release
        [arrM removeObject:p];

    }
    
    return 0;
}
