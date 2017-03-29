//
//  main.m
//  day20
//
//  Created by yhp on 2017/3/19.
//  Copyright © 2017年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
// 常量
static const NSTimeInterval kAnimationDuration = 0.3;

typedef enum WWWWConnectionState{
    WWWWConnectionStateDisconnected,
    WWWWConnectionStateConnecting,
    WWWWConnectionStateConnected
}WWWWConnectionState;

// 新的枚举类型
typedef NS_ENUM(NSUInteger,WWConnectionState) {
    WWWConnectionStateDisconnected,
    WWWConnectionStateConnecting,
    WWWConnectionStateConnected
};

typedef NS_OPTIONS(NSUInteger,WWPernittedDirection){
    WWPernittedDirectionUp      = 1 << 0,
    WWPernittedDirectionDown    = 1 << 1,
    WWPernittedDirectionLeft    = 1 << 2,
    WWPernittedDirectionRight   = 1 << 3,
};

// 属性特质
/*
 readwrite --- getter / setter memthod
 readonly  --- getter
 assign    --- 设置方法"只会执行针对"纯量类型
 strong    --- 拥有关系，会保存数据 设置新值时，设置方法会先保留新值，释放旧值，然后再将新值设置上去
 weak      --- 非拥有关系，设置新值时，设置方法既不保留新值，也不释放旧值，属性遭到摧毁时，属性值会清空
 unsafe_unretained --- 但它适用于"对象类型",表达"非拥有关系
 copy      --- 设置方法不保留新值，而是将其拷贝
 */



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%f",kAnimationDuration);
        WWWWConnectionState e = WWWWConnectionStateConnected;
        NSLog(@"%d",e);
        // 对象同性
        NSString* foo = @"Badge 123";
        NSString* bar = [NSString stringWithFormat:@"Badge %i",123];
        BOOL equalA = (foo == bar);
        BOOL equalB = [foo isEqual:bar];
        BOOL equalC = [foo isEqualToString:bar];
        NSLog(@"%p,%p",foo,bar);
        NSLog(@"%d,%d，%d",equalA,equalB,equalC);
    }
    return 0;
}
