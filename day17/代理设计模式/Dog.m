//
//  Dog.m
//  day17
//
//  Created by yhp on 16/2/1.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Dog.h"
#import "Baby.h"

@implementation Dog

-(void)feedFood:(Baby*)baby
{
    baby.hungry -= 10;
    NSLog(@"婴儿要东西：%i",baby.hungry);
}

-(void)hongBaby:(Baby*)baby
{
    baby.sleepy += 10;
    NSLog(@"婴儿困：%i",baby.sleepy);
}
@end
