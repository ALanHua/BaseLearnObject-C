//
//  YHPLinkedList.h
//  InterviewCodes
//
//  Created by yhp on 2017/1/18.
//  Copyright © 2017年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@class YHPNode;
@interface YHPLinkedList : NSObject

/** properties */
@property(nonatomic,strong)YHPNode* head;
@property(nonatomic,strong)YHPNode* tail;
@property(nonatomic,strong)YHPNode* current;

/* Functions*/
-(instancetype)initWithHead:(NSObject*)value;
-(void)addToFront:(NSObject*)value;
-(void)addToBack:(NSObject*)value;
-(void)insertObject:(NSObject*)object atIndex:(NSUInteger)index;

-(NSObject*)first;
-(NSObject*)currentValue;
-(NSObject*)next;
-(NSObject*)previous;

-(NSUInteger)count;
-(NSObject*)objectInAtIndex:(NSUInteger)index;
-(NSArray*)findObject:(NSObject*)object;

-(BOOL)removeCurrent;
-(BOOL)removeObjectAtindex:(NSUInteger)index;
-(void)printList;
-(void)reverseList;

@end
