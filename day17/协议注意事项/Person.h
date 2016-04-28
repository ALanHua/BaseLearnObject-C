//
//  Person.h
//  day17
//
//  Created by yhp on 16/2/1.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SportProtocol.h"
#import "StudyProtocol.h"

@interface Person : NSObject <SportProtocol,StudyProtocol>

@end
