//
//  main.m
//  单例ARC和MRC写法
//
//  Created by yhp on 16/2/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tools.h"

//想让一个类只有一个对象，实现对象的共享
int main(int argc, const char * argv[])
{
    /*
    Tools* t1 = [[Tools alloc]init];
    Tools* t2 = [Tools new];
    Tools* t3 = [Tools shareInstance];
    
    Tools* t4 = [t3 copy];
    Tools* t5 = [t3 mutableCopy];
    
    NSLog(@"%p,%p,%p,%p,%p",t1,t2,t3,t4,t5);
     */
    Tools* t2 = [[Tools alloc]init];
    NSLog(@"t2 :%p,%lu",t2,[t2 retainCount]);
    [t2 release];
    
    Tools* t1 = [Tools shareInstance];
    NSLog(@"t1 :%p,%lu",t1,[t1 retainCount]);
    [t1 release];

    
    
    return 0;
}
