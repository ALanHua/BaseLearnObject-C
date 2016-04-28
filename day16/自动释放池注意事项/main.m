//
//  main.m
//  自动释放池注意事项
//
//  Created by yhp on 16/1/30.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


int main(int argc, const char * argv[])
{
    /*
    Person* p = [[Person alloc]init];
    @autoreleasepool {
//        Person* p = [[[Person alloc]init]autorelease];
//        [p run];
//        注意2，在自动释放池必须调用autorelease在能释放
//        Person* p = [[Person alloc]init];
//        [p run];
//        注意3,只要在自动释放池中调用autorelease就能释放
        p = [p autorelease];
        [p run];
        
    }
    */
//    注意点1,一定要在自动释放池中调用auotorelease在起作用
//    Person* p = [[[Person alloc]init]autorelease];
//    [p run];
    //注意4 一个程序中可以创建N个自动释放池，且可以嵌套
//    如果存在多个释放池时，自动释放池是以栈的形式存储
    
//    给一个对象方法发一条auotorelease消息，永远会将消息放到栈顶的自动释放池
   /*
    @autoreleasepool {//第一个释放池
        @autoreleasepool {//第二个释放池
            @autoreleasepool {//第三个释放池
               Person* p = [[[Person alloc]init]autorelease];
                [p run];
            }//第三个释放池
             Person* p = [[[Person alloc]init]autorelease];
            
        }//第二个释放池
    }//第一个释放池
    */
    
    @autoreleasepool {
//        千万不要写多次autorelease ,一个new 一个autorelease或者release
//        Person* p = [[[[Person alloc]init]autorelease]autorelease];
        
    }
    
    return 0;
}
