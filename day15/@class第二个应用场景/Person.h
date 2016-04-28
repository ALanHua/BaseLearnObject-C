//
//  Person.h
//  day15
//
//  Created by yhp on 16/1/28.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Dog;

/**
 *  如果两个类相互copy，需要在.h中使用@iclass,.m中使用import
 *  这样不会出现死循环
 */

@interface Person : NSObject


@property(nonatomic,retain)Dog* dog;

@end
