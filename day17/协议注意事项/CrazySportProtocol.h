//
//  CrazySportProtocol.h
//  day17
//
//  Created by yhp on 16/2/1.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SportProtocol.h"
//4,OC中的协议可以遵守其他协议，这个协议就会包含其他协议的声明
@protocol CrazySportProtocol <SportProtocol>

-(void)jumping;

@end
