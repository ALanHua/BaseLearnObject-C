//
//  Person.h
//  day16
//
//  Created by yhp on 16/1/31.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    double _weight;
}

@property(nonatomic,assign)int age;

-(void)say;

@end
