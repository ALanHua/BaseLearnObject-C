//
//  main.m
//  day18
//
//  Created by yhp on 16/2/16.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

//NSAaaray

int main(int argc, const char * argv[])
{
    /*
//    NSArray* arr = [[NSArray alloc]init];
//    NSArray* arr = [NSArray arrayWithObject:@"lnj"];
    //数组中的nil是结束符
    NSArray* arr = [NSArray arrayWithObjects: @"lnj",@"lmj",@"jjj",@"cp", nil];
    NSLog(@"%@",arr);
    */
    /*
    Person* p = [Person new];
    NSObject* obj = [NSObject new];
    NSArray* arr = [NSArray arrayWithObjects:p,obj,@"lmj", nil];
    NSLog(@"arr:%@",arr);
    
    NSLog(@"count = %lu",[arr count]);
//    获取指定元素
    NSLog(@"last:%@",[arr lastObject]);
    NSLog(@"first:%@",[arr firstObject]);
    NSLog(@"arr[1]:%@",[arr objectAtIndex:1]);
     */
//    是否包含默写元素
    /*
    NSArray* arr = [NSArray arrayWithObjects:@"lnj",@"lmj",@"jjj",@"zs", nil];
    if([arr containsObject:@"zs"]){
        NSLog(@"arr 包含zs");
    }else{
       NSLog(@"arr 不包含zs"); 
    }
     */
//    创建数组的简写
//    获取数组元素的简写
    NSString* str = @"lmj";
//   相当于 [NSArrayarrayWithObjects:@"lnj",@"lmj",@"jjj",@"zs", nil];
    NSArray* arr = @[@"lnj",@"lmj",@"jjj"];
//    NSLog(@"%@",[arr objectAtIndex:0]);
    NSLog(@"%@",arr[0]);
    return 0;
}
