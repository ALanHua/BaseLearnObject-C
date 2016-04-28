//
//  Dog.h
//  day16
//
//  Created by yhp on 16/1/30.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@interface Dog : NSObject

//@property(nonatomic,strong)Person* ower;
//@property(nonatomic,assign)Person* ower;
//在ARC中如果保存对象不要用assign(保存基本数据结构）
@property(nonatomic,weak)Person* ower;

@end
