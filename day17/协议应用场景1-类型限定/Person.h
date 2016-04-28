//
//  Person.h
//  day17
//
//  Created by yhp on 16/2/1.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WifeProtocol.h"
@class Wife;

@interface Person : NSObject

//类型限定是写在数据类型的右边
@property(nonatomic,strong)Wife<WifeProtocol>* wife;

-(void)show;

@end
