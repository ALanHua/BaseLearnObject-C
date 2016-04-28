//
//  main.m
//  野指针和空指针
//
//  Created by yhp on 16/1/26.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person* p = [[Person alloc] init];
//        一个对象被释放，我们就称这个对象为僵尸对象
//        当一个指针指向僵尸对象，就叫做野指针
//    message sent to deallocated instance 0x100105ae0
//        空指针：nil
//        一般一个对象呗释放后，会将这个对象设置为空指针
        [p release];
        p = nil;
        
        [p release];
        [p release];
        [p release];
        [p release];
        [p release];
        [p release];
        [p release];
    }
    return 0;
}
