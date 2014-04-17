//
//  AudioCar.h
//  InitTest
//
//  Created by qingyun on 14-3-14.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Engine;
@class Tire;
@interface AudioCar : NSObject
{
    Engine *engine;
    NSMutableArray *tires;
}

- (void)setEngine:(Engine*)newEngine;
- (Engine*)engine;


- (void)setTire:(Tire*)tire atIndex:(int)index;
- (Tire*)tireAtIndex:(int)index;


@end
