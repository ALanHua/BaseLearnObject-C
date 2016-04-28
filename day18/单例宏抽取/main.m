//
//  main.m
//  单例宏抽取
//
//  Created by yhp on 16/2/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tools.h"
#import "Person.h"

int main(int argc, const char * argv[])
{
    
    Tools* t1 = [[Tools alloc]init];
    Tools* t2 = [Tools new];
    Tools* t3 = [Tools shareTools];
    
    Tools* t4 = [t3 copy];
    Tools* t5 = [t3 mutableCopy];
    
    NSLog(@"%p,%p,%p,%p,%p",t1,t2,t3,t4,t5);
    Person* p1 = [Person sharePerson];
    Person* p2 = [Person sharePerson];
    Person* p3 = [Person sharePerson];
    NSLog(@"%p,%p,%p",p1,p2,p3);

//如何判断当前是ARC 还是MRC
//可以在编译的时候判断是否是ARC
#if __has_feature(objc_arc)
    NSLog(@"ARC");
#else
    NSLog(@"MRC");
#endif
    
    return 0;
}
