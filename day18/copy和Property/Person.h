//
//  Person.h
//  day18
//
//  Created by yhp on 16/2/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^myBlock)();

@interface Person : NSObject

//@property (nonatomic,retain)NSString* name;
@property (nonatomic,copy)NSString* name;

// 注意:如果是block使用copy并不是拷贝，而是转移
@property(nonatomic,copy)myBlock pBlock;
@end
