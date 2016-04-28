//
//  main.m
//  NSDictionary
//
//  Created by yhp on 16/2/17.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[])
{
    /*
//    1,如何创建
    NSDictionary* dict = [NSDictionary dictionaryWithObject:@"lnj" forKey:@"name"];
    NSString* name = [dict objectForKey:@"name"];
    NSLog(@"name:%@",name);
    */
    /*
    NSDictionary* dict = [NSDictionary dictionaryWithObjects:@[@"lnj",@"30",@"1.75"] forKeys:@[@"name",@"age",@"height"]];
    NSLog(@"%@,%@,%@",[dict objectForKey:@"name"],[dict objectForKey:@"age"],[dict objectForKey:@"height"]);
    */
//    NSDictionary* dict = @{key:value};
//    NSDictionary* dict = @{@"name":@"lnj"};
//    NSLog(@"%@",dict[@"name"]);
   /*
    NSDictionary* dict = @{@"name":@"lnj",@"age":@"30",@"height":@"1.75"};
    NSLog(@"%@,%@,%@",dict[@"name"],dict[@"age"],dict[@"height"]);
    */
//    2，字典的遍历
//    如何获取键值对的个数
//    NSDictionary* dict = @{@"name":@"lnj",@"age":@"30",@"height":@"1.75"};
//    NSLog(@"count = %lu",[dict count]);
    /*
    for (int i = 0; i < dict.count; ++i) {
        NSArray* keys = [dict allKeys];
//        取出当前位置对应的key
//        NSLog(@"%@",keys[i]);
        NSString* key = keys[i];
        NSString* value = dict[key];
        NSLog(@"key = %@,value = %@",key,value);
    }
     */
//    for in 遍历字典，会将key
    /*
    for (NSString* key in dict) {
//        NSLog(@"%@",obj);
        NSString* value = dict[key];
        NSLog(@"key = %@,value = %@",key,value);
    }
     */
//    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
//        NSLog(@"key = %@,value = %@",key,obj);
//    }];
//      3,将字典写入到文件中
    NSDictionary* dict = @{@"name":@"lnj",@"age":@"30",@"height":@"1.75"};
//    字典的存储是无序的
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
         NSLog(@"key = %@,value = %@",key,obj);
    }];
    
    
    [dict writeToFile:@"/Users/smartwater/Downloads/info.plist"  atomically:YES];
    
    NSDictionary* newDict = [NSDictionary dictionaryWithContentsOfFile:@"/Users/smartwater/Downloads/info.plist"];
    NSLog(@"%@",newDict);
    
    NSArray* arr = @[@10,@20,@30,@5];
    [arr writeToFile:@"/Users/smartwater/Downloads/abc.plist" atomically:YES];
    
     return 0;
}
