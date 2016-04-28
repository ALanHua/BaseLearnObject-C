//
//  Person.m
//  day18
//
//  Created by yhp on 16/2/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)dealloc
{
//    只要给Block发送一条release消息，block中使用的对象也会收到该消息
    Block_release(_pBlock);
    NSLog(@"%s",__func__);
    [super dealloc];
}
@end
