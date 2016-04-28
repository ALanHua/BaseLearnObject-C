//
//  main.m
//  多个对象的内存管理练习
//
//  Created by yhp on 16/1/27.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Status.h"

/**
 *  练习
 *  模拟微博
 分三个类
 1，账号：Account
 注册时间 registerTimer
 账号 email
 密码  pwd
 2，用户类 Author
 用户昵称 name
 用户头像  icon
 用户是否是会员 vip
 用户对应的账号 account
 用户的生日   birthday
 3，微博类-Status
 微博正文 test
 发布时间 createTime
 微博配图 picture
 微博对应的作者 author
 评论数     commentCount
 转发数     retweetCount
 赞数       likeCount
 转发微博    repostStatus
 创建顺序 1,账号 2，用户，3微博
 
 */
int main(int argc, const char * argv[])
{

//    1,给老王创建账号
    Account* lwAccount = [[Account alloc] init];
    lwAccount.email = @"yhp123@qq.com";
    lwAccount.pwd =  @"123456";
    lwAccount.registerTimer = (MyDate){2015,1,1,17,56,34};
//    2，根据账号设置用户信息
    Author* lwAuthor = [[Author alloc] init];
    lwAuthor.name = @"隔壁老王";
    lwAuthor.icom = @"lw.png";
    lwAuthor.vip = YES;
    lwAuthor.account = lwAccount;
    lwAuthor.birthday = (MyDate){1986,3,8,18,16,18};
//    3，发布微博
    Status* lwStatus = [[Status alloc]init];
    lwStatus.text = @"爆米花手机，手机中的战斗机";
    lwStatus.picture = @"phone.png";
    lwStatus.createTime = (MyDate){2015,6,20,10,23,23};
    lwStatus.author = lwAuthor;
    lwStatus.commentCount = 100;
    lwStatus.retweetCount = 90;
    lwStatus.likeCount = 200;
    
//    1,给王大锤穿件账号
    Account* dcAccount = [[Account alloc] init];
    dcAccount.email = @"dachuimeimei@qq.com";
    dcAccount.pwd =  @"123456";
    dcAccount.registerTimer = (MyDate){2012,8,8,19,26,54};
//    2，根据账号设置用户信息
    Author* dcAuthor = [[Author alloc] init];
    dcAuthor.name = @"王大锤";
    dcAuthor.icom = @"wdchui.png";
    dcAuthor.vip = NO;
    dcAuthor.account = dcAccount;
    dcAuthor.birthday = (MyDate){1989,9,6,2,16,28};
//    3，发布微博
    Status* dcStatus = [[Status alloc]init];
    dcStatus.text = @"逼格";
    dcStatus.picture = nil;
    dcStatus.createTime = (MyDate){2015,6,21,20,47,9};
    dcStatus.author = dcAuthor;
    dcStatus.commentCount = 0;
    dcStatus.retweetCount = 0;
    dcStatus.likeCount = 0;
    dcStatus.repostStatus = lwStatus;
    
//  MRC Release
    [lwAccount release];
    [lwAuthor release];
    [lwStatus release];
    
    [dcAccount release];
    [dcAuthor release];
    [dcStatus release];
    
    
    return 0;
}
