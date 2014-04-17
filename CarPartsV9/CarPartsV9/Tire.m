//
//  Tire.m
//  CarPartsV4
//
//  Created by qingyun on 14-3-15.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "Tire.h"

@implementation Tire

- (id)init
{
    if (self = [self initWithPressure:32.3 TreadDepth:20.2]) {
    }
    return self;
}

//便利初始化函数
- (id)initWithPressure:(float)newPressure TreadDepth:(float)newTreadDepth
{
    if (self = [super init]) {
        self.pressure = newPressure;
        self.treadDepth = newTreadDepth;
    }
    return self;
}

- (id)initPressure:(float)newPressure
{
//    if (self = [super init]) {
//        pressure = newPressure;
//        treadDepth = 33.0;
//    }
    if (self = [self initWithPressure:newPressure TreadDepth:33.0]) {
        
    }
    return self;
}

- (id)initTreadDepth:(float)newTreadDepth
{
//    if (self = [super init]) {
//        pressure = 22.2;
//        treadDepth = newTreadDepth;
//    }
    if (self = [self initWithPressure:22.2 TreadDepth:newTreadDepth]) {
    }
    return self;
}

- (NSString*)description
{
    NSString *desc = [NSString stringWithFormat:@"I am tire pressure is %.1f and treadPath is %.1f",
                      self.pressure,self.treadDepth];
    return  desc;
}

- (void)dealloc
{
    _pressure = 0.0f;
    _treadDepth = 0.0f;
    [super dealloc];
}
@end
