//
//  Phone.h
//  day13
//
//  Created by yhp on 16/1/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Phone : NSObject
{
    int _cpu;
}

-(void)signalWithNumber:(NSString*)number;
-(void)sendMessageWithNumber:(NSString*)number andContent:(NSString*)content;

@end
