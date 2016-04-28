//
//  Iphone.h
//  day13
//
//  Created by yhp on 16/1/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Phone.h"
//@interface Iphone : NSObject
@interface Iphone : Phone
//{//继承中成员变量不能重写
//    int _cpu;
//}
-(void)setCpu:(int)cpu;
-(int)cpu;
//先自己，在父类逐层往上找
//如果一直找不到就会报错:unrecognized select sent to insttance
-(void)signalWithNumber:(NSString*)number;

@end
