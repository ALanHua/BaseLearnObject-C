//
//  main.m
//  单个对象内存管理
//
//  Created by yhp on 16/1/26.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/**
 * ARC-自动引用计数:不需要程序员管理内存,（和java垃圾回收机制不一样）OC是编译器做的，JAVA是系统做的
 * MRC-手动引用计数：所有对象内存管理需要程序员自己管理
 */
//内存 alloc->dealloc retain->release
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        只有创建，引用计数器默认为1
        Person* p = [[Person alloc] init];
        NSLog(@"returnCount:%lu",[p retainCount]);
        
        [p retain];
        NSLog(@"returnCount:%lu",[p retainCount]);
//        发送release消息
//        只要计数器为0 系统就会释放内存
        [p release];//已经是ARC 不需要手动释放
//        release并不是销毁对象
        NSLog(@"returnCount:%lu",[p retainCount]);
        [p release];//已经是ARC 不需要手动释放
        NSLog(@"------------------");
    }
    
    return 0;
}
