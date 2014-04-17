//
//  Car.h
//  CarPartsV4
//
//  Created by qingyun on 14-3-15.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"
#import "Tire.h"
//关于Car类的声明与定义

@interface Car : NSObject
{
    Engine *engine;
    Tire *tires[4];
}
//类里对象方法的声明
- (void)print;
- (void)setEngine:(Engine*)newEngine;
- (Engine*)engine;

- (void)setTires:(Tire*)tire atIndex:(int)index;
- (Tire*)tireAtIndex:(int)index;
@end
