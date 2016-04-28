//
//  main.m
//  自定义类实现Copy
//
//  Created by yhp on 16/2/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[])
{
    /**
     1,想让自定义的对象被copy，只要遵守NSCopying
     2,实现协议方法(id)copyWithZone:(NSZone *)zone
     3,在copyWithZone中创建一个副本对象，将当前对象的值赋值给副本
     */
    /*
    Person* p =[[Person alloc]init];
    p.age = 30;
    p.name = @"lnj";
    
//    Person* p2 = [p copy];
    Person* p2 = [p mutableCopy];
    NSLog(@"%@",p2);
     */
    
    Student* stu = [[Student alloc]init];
    stu.age = 30;
    stu.height = 1.75;
    stu.name = @"lnj";
    NSLog(@"%@",stu);
    
//    如果想让子类在copy的时候保留子类的属性，那么必须重新copyWithZone
    Student* stu2 = [stu copy];
    NSLog(@"%@",stu2);
    return 0;
}
