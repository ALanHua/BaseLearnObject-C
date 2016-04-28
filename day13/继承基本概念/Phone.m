//
//  Phone.m
//  day13
//
//  Created by yhp on 16/1/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Phone.h"

@implementation Phone

-(void)signalWithNumber:(NSString*)number
{
    NSLog(@"手机call :%@",number);
}
-(void)sendMessageWithNumber:(NSString*)number andContent:(NSString*)content
{
    NSLog(@"发短信给%@，内容%@",number,content);
}
@end
