//
//  Person+yhp.m
//  day16
//
//  Created by yhp on 16/1/31.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person+yhp.h"

@implementation Person (yhp)


-(void)hello
{
//    可以在分类中访问.h中的属性
    NSLog(@"weight:%f",_weight);
}

//如果分类中有于原有类方法同名，会调用分类中的方法
//-(void)say
//{
//    NSLog(@"say");
//}

@end
