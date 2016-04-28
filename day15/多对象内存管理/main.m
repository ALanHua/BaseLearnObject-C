//
//  main.m
//  多对象内存管理
//
//  Created by yhp on 16/1/27.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Room.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
//        1创建对象
        Person* p = [[Person alloc] init];
        Room* r = [[Room alloc] init];
        r.no = 888;
//        人在，房间在
        p.room = r;
        
        [r release];
        
//        这之前人没有被释放
        [p release];
        
    }
    return 0;
}
