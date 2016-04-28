//
//  main.m
//  点语法
//
//  Created by yhp on 16/1/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
    Person *p = [Person new];
//    p->_age = 30;
//    p->_name = @"andy";
//    p->_height = 1.78;
//    NSLog(@"age:%i,name:%@,height:%f",
//           p->_age, p->_name,p->_height);
//    [p setAge:30];
//    [p setName:@"andy"];
//    [p setHeight:1.78];
//
//        NSLog(@"age:%i,name:%@,height:%f",
//               [p age], [p name],[p height]);
//
    /**
     *  点语法,编译时会替换成setter 和 getter语法
     */
    p.age =30;
    p.name = @"andy";
// [p setName:@"andy"];//编译器做的
    p.height = 1.78;
    
  NSLog(@"age:%i,name:%@,height:%f",
        p.age, p.name,p.height);
    
    /**
     *  注意点
     *  只是给成员变量赋值
     */
    return 0;
}
