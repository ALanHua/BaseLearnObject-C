//
//  main.m
//  NSArray遍历
//
//  Created by yhp on 16/2/16.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    NSArray* arr = @[@"lnj",@"lmj",@"jjj"];
    /*
//    常规遍历
    for (int i = 0; i < arr.count; i++) {
        NSLog(@"arr[%i] = %@",i,arr[i]);
    }
     */
    /*
//    如果是oc数组，可以使用增强for循环
//    逐个取出arr中的元素，将其复制给obj
//    注意：obj的类型可以根据数组中元素的类型来写，不一定要写OBjext
//    for (NSObject* obj in arr) {
    for (NSString* obj in arr) {
        NSLog(@"%@",obj);
    }
     */
//    使用OC数组的迭代器
//    没取出一个元素都会调用我们的block,每次都会将元素和索引传递给我们
//    obj 就是元素，idx就是索引,stop用于控制什么时候遍历
    [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if(idx == 1)
        {
            *stop = YES;
        }
        NSLog(@"obj = %@,idx = %lu",obj,idx);
    }];
    
    return 0;
}
