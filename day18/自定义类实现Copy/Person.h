//
//  Person.h
//  day18
//
//  Created by yhp on 16/2/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCopying,NSMutableCopying>

@property(nonatomic,assign)int age;
@property(nonatomic,copy)NSString* name;

@end
