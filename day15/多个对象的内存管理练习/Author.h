//
//  Author.h
//  day15
//
//  Created by yhp on 16/1/28.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"

@interface Author : NSObject
//用户昵称 name
//用户头像  icon
//用户是否是会员 vip
//用户对应的账号 account
//用户的生日   birthday
@property(nonatomic,retain)NSString* name;
@property(nonatomic,retain)NSString* icom;
@property(nonatomic,assign,getter=isVip)BOOL vip;
@property(nonatomic,retain)Account* account;
@property(nonatomic,assign)MyDate birthday;


@end
