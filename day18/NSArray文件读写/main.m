//
//  main.m
//  NSArray文件读写
//
//  Created by yhp on 16/2/16.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
    /*
    NSArray* arr = @[@"lnj",@"lmj",@"jjj"];
//    1，将数组写到文件中
//    如果将一个数组写到文件其实是写入了一个XML文件，会将文件扩展名。plist
    BOOL flag = [arr writeToFile:@"/Users/smartwater/Downloads/abc.plist" atomically:YES];
    NSLog(@"%i",flag);
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
//    writeTOfile 不能写入自定义数据
    BOOL flag = [arr writeToFile:@"/Users/smartwater/Downloads/person.plist" atomically:YES];
    NSLog(@"%i",flag);
//    2，从文件中读取一个数组
    /*
    NSArray* newArray = [NSArray arrayWithContentsOfFile:@"/Users/smartwater/Downloads/abc.plist" ];
    NSLog(@"%@",newArray);
     */
    
    return 0;
}
