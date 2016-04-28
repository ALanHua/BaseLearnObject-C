//
//  main.m
//  SEL类型
//
//  Created by yhp on 16/1/26.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Person.h"

int main(int argc, const char * argv[])
{
//  1,SEL类型的第一个作用，配合对象/类检查类中有没有实现类中有没有类型的方法
//    SEL sel = @selector(setAge:);
//    Person* p = [[Person alloc] init];
////    判断p中有没有实现-setAge的方法
//    BOOL flag = [p respondsToSelector:sel];
//    NSLog(@"flag:%i",flag);
////    respondsToSelector注意点：如果通过对象调用，会判断-开头的方法
////    如果用类调用，会判断+开头的类方法
//    SEL sel1 = @selector(test);
//    flag = [p respondsToSelector:sel1];
//    NSLog(@"flag:%i",flag);
//    flag = [Person respondsToSelector:sel1];
//    NSLog(@"flag:%i",flag);
    
//    2 SEL 第二个作用配合对象/类来调用某一个SEL方法
//    SEL sel = @selector(demo);
//    Person* p = [[Person alloc] init];
////    调用P对象的中SEL中的demo方法
//    [p performSelector:sel];
//    
//    SEL sel1 = @selector(signalWithNumber:);
////    注意performSelector调用有参数的方法，方法的形参必须对象
//    [p performSelector:sel1 withObject:@"12345678"];
//    
////    performSelector最多传递2个参数
//    SEL sel2 = @selector(sendMessageWithNumber: andContent:);
//    [p performSelector:sel2 withObject:@"12345" withObject:@"andy"];
//    
//  3，配合对象，将SEL类型作为方法的形参
//    Car* car = [Car new];
//    SEL sel = @selector(run);
//    Person* p = [[Person alloc] init];
//    [p makeObject:car andSel:sel];
    return 0;
}
