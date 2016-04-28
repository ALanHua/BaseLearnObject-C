//
//  Account.h
//  day15
//
//  Created by yhp on 16/1/28.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct {
    int year;
    int month;
    int day;
    int hour;
    int minute;
    int second;
}MyDate;

@interface Account : NSObject

//注册时间 registerTimer
//账号 email
//密码  pwd
@property (nonatomic,assign)MyDate registerTimer;
@property (nonatomic,retain)NSString* email;
@property (nonatomic,retain)NSString* pwd;


@end
