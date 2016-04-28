//
//  main.m
//  NSMutableDictionary
//
//  Created by yhp on 16/2/17.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    /*
//    1 创建一个空字符串
    NSMutableDictionary* dictM = [NSMutableDictionary dictionary];

//    2，如何添加
    [dictM setObject:@"lnj" forKey:@"name"];
    NSLog(@"%@",dictM);
//    会将传入字典中所有键值对取出来添加到字典中
    [dictM setValuesForKeysWithDictionary:@{@"age":@"30",@"height":@"1.75"}];
    NSLog(@"%@",dictM);
//    3，如何获取
    NSLog(@"name = %@",dictM[@"name"]);
//    4，如何删除
    [dictM removeObjectForKey:@"name"];
    NSLog(@"%@",dictM);
//    [dictM removeObjectsForKeys:@[@"age",@"height"]];
//    NSLog(@"%@",dictM);
//    5，如何修改
//    如果用setObject方法，新值会覆盖旧值
//   [dictM setObject:@"88" forKey:@"age"];
     dictM[@"age"] = @"88";
    NSLog(@"%@",dictM);
    */
    
    /**
     *  注意点
     */
//    1,不能使用@{}创建一个可变字典
//    NSMutableDictionary* dictM = @{@"name":@"lnj"};
//    [dictM setObject:@"30" forKey:@"age"];
//    2，如果是不可变字典，那么key不能相同
//    如果是可变字典，后面会覆盖前面的
    /*
    NSDictionary* dict = @{@"name":@"lnj",@"name":@"lmj"};
    NSLog(@"%@",dict);
    
    NSMutableDictionary* dictM = [NSMutableDictionary dictionaryWithObjects:@[@"lnj",@"lmj"] forKeys:@[@"name",@"name"]];
    NSLog(@"%@",dictM);
    */
    
    
    return 0;
}
