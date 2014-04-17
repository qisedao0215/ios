//
//  Car.m
//  EngineRetainCount
//
//  Created by qingyun on 14-3-14.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "Car.h"

@implementation Car

- (void)setEngine:(Engine *)newEngine
{
    [newEngine retain];
    [engine release];
    engine = newEngine;
//    __func___这是一个宏， 表示当前方法的名字， 是一个动态计算功能。
    NSLog(@"%s,%ld",__func__,[engine retainCount]);
}

- (id)init
{
    if (self = [super init]) {
        NSLog(@"%s",__func__);
    }
    return self;
}
- (Engine*)engine
{
    return engine;
}

- (void)dealloc
{
    [super dealloc];
    [engine release];
}
@end

