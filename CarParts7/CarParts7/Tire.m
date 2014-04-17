//
//  Tire.m
//  CarPartsV4
//
//  Created by qingyun on 14-3-15.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "Tire.h"

@implementation Tire

//- (id)init
//{
//    if (self = [super init]) {
////        pressure = 32.3;
////        treadDepth = 20.2;//单位 mm
//    }
//    return self;
//}

- (void)setPressure:(float)newPressure
{
//    由于参数是基本数据类型，所以不用考虑内存问题
//    要记住：Objective-C语言， 所有的对象都是在堆上，需要审请使用
//    其本数据类型，像这样的参数，在栈上
    pressure = newPressure;
}

- (float)pressure
{
    return pressure;
}

- (void)setTreadDepth:(float)newTreadDepth
{
    treadDepth = newTreadDepth;
}

- (float)treadDepth
{
    return treadDepth;
}

- (NSString*)description
{
    NSString *desc = [NSString stringWithFormat:@"I am tire pressure is %.1f and treadPath is %.1f",
                      pressure,treadDepth];
    return  desc;
}

@end
