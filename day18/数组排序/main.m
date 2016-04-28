//
//  main.m
//  数组排序
//
//  Created by yhp on 16/2/16.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
    /*
    NSArray* arr = @[@10,@20,@5,@7,@15];
    NSLog(@"排序前:%@",arr);
//    想使用compare方法对数组元素进行排序，数组元素必须是OC对象,不能是自定义数据类型
    NSArray* newArr = [arr sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"排序后:%@",newArr);
    */
    
    Person* p1 = [Person new];
    p1.age = 10;
    Person* p2 = [Person new];
    p2.age = 20;
    Person* p3 = [Person new];
    p3.age = 5;
    Person* p4 = [Person new];
    p4.age = 7;
   
    NSArray* arr = @[p1,p2,p3,p4];
//    按照年龄排序
//    NSArray* newArr = [arr sortedArrayUsingSelector:@selector(compare:)];
//  默认按照升序排序
    NSArray* newArr = [arr sortedArrayWithOptions:NSSortStable usingComparator:^NSComparisonResult(Person* obj1, Person* obj2) {
//        每次调用数组中的两个元素
//        NSLog(@"obj1 %@,obj2 %@",obj1,obj2);
//        二分排序
        return obj1.age <
        
        obj2.age;
    }];
    NSLog(@"newArr:%@",newArr);
    return 0;
}
