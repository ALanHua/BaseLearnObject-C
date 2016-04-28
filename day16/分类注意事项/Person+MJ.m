//
//  Person+MJ.m
//  day16
//
//  Created by yhp on 16/1/31.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person+MJ.h"

@implementation Person (MJ)

//如果多个分类都有和原有类的方法，执行谁会有编译器决定，执行最后参与编译的

-(void)say
{
    NSLog(@"%s",__func__);
}

@end
