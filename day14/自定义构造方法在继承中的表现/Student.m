//
//  Student.m
//  day14
//
//  Created by yhp on 16/1/25.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Student.h"

@implementation Student

-(instancetype)initWithAge:(int)age andName:(NSString*)name andNo:(int)no
{
    if (self = [super initWithAge:age andName:name]) {
        _no = no;
    }
    return self;
    
}

-(NSString*)description
{
    return [NSString stringWithFormat:@"age %i,name %@,no %i",[self age],[self name],_no];
}
@end
