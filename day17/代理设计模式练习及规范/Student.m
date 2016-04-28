//
//  Student.m
//  day17
//
//  Created by yhp on 16/2/2.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Student.h"

@implementation Student

-(void)findHourse
{
    NSLog(@"学生想找房子");
//    通知代理
    if([self.delegate respondsToSelector:@selector(studentFindHourse)]){
        [self.delegate studentFindHourse];
    }
}

@end
