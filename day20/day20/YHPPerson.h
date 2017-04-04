//
//  YHPPerson.h
//  day20
//
//  Created by yhp on 2017/4/4.
//  Copyright © 2017年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 将类的实现代码分散到便于管理的数个分类中
 */
@interface YHPPerson : NSObject

@property(nonatomic,copy,readonly)NSString* firstName;
@property(nonatomic,copy,readonly)NSString* lastName;
@property(nonatomic,copy,readonly)NSArray*  friends;

-(id)initWithFirstName:(NSString*)firstName andLastName:(NSString*)lastName;

@end


/**
 分类 朋友
 */
@interface YHPPerson (Friendship)
-(void)addFriend:(YHPPerson*)person;
-(void)removeFriend:(YHPPerson*)person;
-(BOOL)isFriendsWith:(YHPPerson*)person;
@end


/**
 分类 工作
 */
@interface YHPPerson (Work)
-(void)performDaysWork;
-(void)takeVacationFromWork;
@end


/**
 分类 玩
 */
@interface YHPPerson (Play)
-(void)goToTheCinema;
-(void)goToSportsGame;
@end


