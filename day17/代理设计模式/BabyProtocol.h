//
//  BabyProtocol.h
//  day17
//
//  Created by yhp on 16/2/1.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Baby;

@protocol BabyProtocol <NSObject>

-(void)feedFood:(Baby*)baby;
-(void)hongBaby:(Baby*)baby;

@end
