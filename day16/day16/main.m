//
//  main.m
//  day16
//
//  Created by yhp on 16/1/30.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


int main(int argc, const char * argv[])
{
    /*
    @autoreleasepool {//创建释放池 将release延迟
        Person* p = [[Person alloc]init];
//        只要调用autorelease 就不用调用release了
//        不要关心对象什么时候释放，只要在p的作用域里
        p = [p autorelease];
        //但如果调用了retain也不能保证一定释放
//        [p retain];
        [p run];
        [p run];
    }//自动销毁，发送一个release消息
    */
//autorelease的其他写法 iOS5以后这么写
    /*
    @autoreleasepool {
//        Person* p = [[Person alloc]init];
//        p = [p autorelease];
        Person* p = [[[Person alloc]init]autorelease];
        [p run];
        
    }
    */
//    创建和销毁自动释放池 iOS5以前
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc]init];
    Person* p = [[Person alloc]init];
    [p run];
    [pool release];
    
    
    return 0;
}
