//
//  YHPPerson.h
//  day19
//
//  Created by yhp on 16/8/17.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  主要为了学习Property
 */

@interface YHPPerson : NSObject

typedef void (^YHPTestBlock)(NSString* name);

@property(nonatomic,copy)NSString* copiedString;
@property(nonatomic)NSString* name;// 默认是strong
@property(nonatomic)NSArray* array;// 默认是strong
@property(nonatomic,unsafe_unretained)NSString* unsafeName;

@property (nonatomic,copy)YHPTestBlock testBlock;
@end
