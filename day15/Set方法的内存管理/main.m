//
//  main.m
//  Set方法的内存管理
//
//  Created by yhp on 16/1/27.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Room.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        //        1创建对象
        Person* p = [[Person alloc] init];
        Room* r = [[Room alloc] init];
        r.no = 888;
        p.room = r;
        
        [r release];
        
//        换房
        /*
        Room* r2 = [[Room alloc] init];
        r2.no = 444;
        
        p.room = r2;
        [r2 release];
        */
        p.room = r;
        
        [p release];
    }
    return 0;
}
