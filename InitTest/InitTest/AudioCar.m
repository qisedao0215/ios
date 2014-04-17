//
//  AudioCar.m
//  InitTest
//
//  Created by qingyun on 14-3-14.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "AudioCar.h"

#import "Engine.h"
#import "Tire.h"
@implementation AudioCar

- (id) init
{
    if (self = [super init]) {
        tires = [[NSMutableArray alloc] init];
        for (int i = 0 ; i < 4 ; i++) {
            [tires addObject:[NSNull null]];
        }
    }
    return self;
}


- (void)setEngine:(Engine*)newEngine
{
    engine = newEngine;
}

- (Engine*)engine
{
    return engine;
}

- (void)setTire:(Tire*)tire atIndex:(int)index
{
//    使用新的对象，根据index替换原来的值
    [tires replaceObjectAtIndex:index withObject:tire];
}

- (Tire*)tireAtIndex:(int)index
{
    return [tires objectAtIndex:index];
}


- (NSString*)description
{
    NSString *desc = [NSString stringWithFormat:@"I'm BMWCar engine is %@, tire :%@",engine,tires];
    return desc;
}


@end
