//
//  AllWeatherTire.m
//  CarPartsV4
//
//  Created by qingyun on 14-3-15.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "AllWeatherTire.h"

@implementation AllWeatherTire


- (void)setRainHanding:(float)newRainHaning
{
    rainHanding = newRainHaning;
}

- (float)rainHanding
{
    return rainHanding;
}

- (void)setSnowHanding:(float)newSnowHanding
{
    snowHanding = newSnowHanding;
}

- (float)snowHanding
{
    return snowHanding;
}

////我们可以在子类里重写父类（Tire）的初始化方法来， 来解决目前没有初始化成功的问题。
//- (id)initTreadDepth:(float)newTreadDepth
//{
//    if (self = [super initTreadDepth:newTreadDepth]) {
//        rainHanding = 100.3;
//        snowHanding = 200.3;
//    }
//    return self;
//}
//
//- (id)initPressure:(float)newPressure
//{
//    if (self = [super initPressure:newPressure]) {
//        rainHanding = 100.3;
//        snowHanding = 200.3;
//    }
//    return self;
//}

- (id)initWithPressure:(float)newPressure TreadDepth:(float)newTreadDepth
{
    if (self = [super initWithPressure:newPressure TreadDepth:newTreadDepth]) {
        rainHanding = 200.3;
        snowHanding = 300.4;
    }
    return self;
}

- (NSString*)description
{
    NSString *desc;
    desc = [NSString stringWithFormat:@"AllWeatherTier:%.1f,%.1f, %.1f, %.1f",
            pressure,treadDepth,rainHanding,snowHanding];
    return desc;
    
}

@end