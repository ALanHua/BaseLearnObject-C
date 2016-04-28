//
//  Gun.m
//  day13
//
//  Created by yhp on 16/1/20.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Gun.h"

@implementation Gun
-(void)shot
{
    if (_bullet > 0) {
        _bullet--;
        NSLog(@"打了一枪：%i",_bullet);
    }else{
        NSLog(@"error");
    }

}

-(void)addBullet:(int)count
{
    if(count < 0){
        count = 0;
    }
    _bullet = count;
}

-(int)getBullet
{
    return _bullet;
}
@end
