//
//  Person.h
//  day13
//
//  Created by yhp on 16/1/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
//    @public
    int _age;
    NSString *_name;
    double _height;
}

-(void)setAge:(int)age;
-(void)setName:(NSString*)name;
-(void)setHeight:(double)height;

-(int)age;
-(NSString*)name;
-(double)height;
@end
