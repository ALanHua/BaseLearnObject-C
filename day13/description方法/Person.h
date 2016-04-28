//
//  Person.h
//  day13
//
//  Created by yhp on 16/1/22.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
    double _height;
    double _weight;
    
    NSString* _name;
    NSString* _tel;
    NSString* _email;
}

-(void)setAge:(int)age;
-(void)setHeight:(double)height;
-(void)setWeight:(double)weight;
-(void)setName:(NSString*)name;
-(void)setTel:(NSString*)tel;
-(void)setEmail:(NSString*)email;

-(int)age;
-(double)height;
-(double)weight;
-(NSString*)name;
-(NSString*)tel;
-(NSString*)email;

@end
