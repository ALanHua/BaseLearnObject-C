//
//  Student.h
//  day17
//
//  Created by yhp on 16/2/2.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StudentProtocol.h"
@interface Student : NSObject

@property(nonatomic,strong)id<StudentProtocol> delegate;

-(void)findHourse;

@end
