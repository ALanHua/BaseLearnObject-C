//
//  Person.h
//  day12
//
//  Created by yhp on 16/1/19.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iphone.h"

@interface Person : NSObject
{
    @public
    int  _age;
    NSString* _name;
}
-(void)say;
-(void)signale:(Iphone *)phone;
@end
