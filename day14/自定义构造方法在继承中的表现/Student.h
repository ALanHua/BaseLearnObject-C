//
//  Student.h
//  day14
//
//  Created by yhp on 16/1/25.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@interface Student : Person

@property int no;//序号

-(instancetype)initWithAge:(int)age andName:(NSString*)name andNo:(int)no;
@end
