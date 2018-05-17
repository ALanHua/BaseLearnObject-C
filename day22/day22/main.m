//
//  main.m
//  day22
//
//  Created by yhp on 2018/5/17.
//  Copyright © 2018年 none. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        dispatch_queue_t mainQueue = dispatch_get_main_queue();
        dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
        
        dispatch_queue_set_specific(mainQueue, "key", "main", NULL);
        
        dispatch_sync(globalQueue, ^{
            BOOL res1 = [NSThread isMainThread];
            BOOL res2 = dispatch_get_specific("key") != NULL;
            NSLog(@"%d,%d\n",res1,res2);
        });
        
        dispatch_async(globalQueue, ^{
            BOOL res1 = [NSThread isMainThread];
            BOOL res2 = dispatch_get_specific("key") != NULL;
            NSLog(@"%d,%d\n",res1,res2);
        });
    }
    return 0;
}
