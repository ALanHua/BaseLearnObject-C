//
//  Person.h
//  day16
//
//  Created by yhp on 16/1/30.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic,assign)int age;

+(instancetype)person;
+(instancetype)personWithAge:(int)age;


-(instancetype)initWithAge:(int)age;

@end
