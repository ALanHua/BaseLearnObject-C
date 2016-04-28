//
//  Person.h
//  day16
//
//  Created by yhp on 16/1/30.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Dog;

@interface Person : NSObject

//MRC中A想拥有B,需要一次retain，不用了要release

//ARC ,A想拥有B对象，需要用强指针，不用了什么都不需要做，编译器会帮我门做
//在ARC中用strong == MRCd的retain
@property(nonatomic,strong)Dog* dog;

@end
