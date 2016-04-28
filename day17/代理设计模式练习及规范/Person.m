//
//  Person.m
//  day17
//
//  Created by yhp on 16/2/2.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)findHourse
{
    NSLog(@"学生想找房子");
    if ([self.delegate respondsToSelector:@selector(personfindHourse:)]){
        [self.delegate personfindHourse:self];
    }
}
@end
