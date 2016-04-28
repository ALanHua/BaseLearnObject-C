//
//  Status.h
//  day15
//
//  Created by yhp on 16/1/28.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Author.h"

@interface Status : NSObject
//微博正文 text
//发布时间 createTime
//微博配图 picture
//微博对应的作者 author
//评论数     commentCount
//转发数     retweetCount
//赞数       likeCount
//转发微博    repostStatus
@property(nonatomic,retain)NSString* text;
@property(nonatomic,retain)NSString* picture;
@property(nonatomic,assign)MyDate createTime;
@property(nonatomic,retain)Author* author;
@property(nonatomic,assign)int commentCount;
@property(nonatomic,assign)int retweetCount;
@property(nonatomic,assign)int likeCount;
//转发微博
@property(nonatomic,retain)Status* repostStatus;

@end
