//
//  YHPNode.h
//  InterviewCodes
//
//  Created by yhp on 2017/1/18.
//  Copyright © 2017年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YHPNode : NSObject
/** 数据 */
@property(nonatomic,strong)NSObject* value;
/** 上一个节点 */
@property(nonatomic,strong)YHPNode* previous;
/** 下一个节点 */
@property(nonatomic,strong)YHPNode* next;

-(instancetype)initWithObject:(NSObject*)object;

@end
