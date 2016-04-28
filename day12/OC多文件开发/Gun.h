//
//  Gun.h
//  day12
//
//  Created by yhp on 16/1/19.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Clip.h"
@interface Gun : NSObject
{
    Clip  *clip;
}
//射击
//注意 在企业级开发中不要随意修改一个方法
-(void)shot:(Clip *)c;
@end
