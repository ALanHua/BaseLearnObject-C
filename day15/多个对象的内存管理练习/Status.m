//
//  Status.m
//  day15
//
//  Created by yhp on 16/1/28.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Status.h"

@implementation Status

-(void)setText:(NSString*)text
{
    if (_text != text){
        [_text release];
        _text = [_text retain];
    }
}

-(void)dealloc
{
    NSLog(@"%s",__func__);
    /*
    [_text release];
    _text = nil;
    [_picture release];
    _picture = nil;
    [_author release];
    _author = nil;
    [_repostStatus release];
    _repostStatus = nil;
    */
    self.text = nil;//相当于set方法，先release,然后赋值新值
    self.picture = nil;
    self.author = nil;
    self.repostStatus = nil;
    
    [super dealloc];
}
@end
