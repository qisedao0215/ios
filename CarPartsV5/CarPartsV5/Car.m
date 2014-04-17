//
//  Car.m
//  CarPartsV4
//
//  Created by qingyun on 14-3-15.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "Car.h"

@implementation Car

- (void)setEngine:(Engine *)newEngine
{
    engine = newEngine;
}

- (Engine*)engine
{
    return engine;
}

- (void)setTires:(Tire *)tire atIndex:(int)index
{
    if ((index < 0) || (index > 3)) {
        //        NSLog(@"bad index (%d) in setTires:atIndex:",index);
        NSLog(@"bad index (%d) in %s",index,__func__);
        exit(1);//这个错误码能够在代码出错的时候，帮助我们定位错误。
    }
    tires[index] = tire;
}


- (Tire*)tireAtIndex:(int)index
{
    if ((index < 0) || (index > 3)) {
        NSLog(@"bad index (%d) in tireAtIndex:",index);
        NSLog(@"bad index (%d) in %s",index,__func__);
        exit(1);//这个错误码能够在代码出错的时候，帮助我们定位错误。
    }
    return tires[index];
}


- (void)print
{
    NSLog(@"%@",engine);
    NSLog(@"%@",tires[0]);
    NSLog(@"%@",tires[1]);
    NSLog(@"%@",tires[2]);
    NSLog(@"%@",tires[3]);
}
@end


