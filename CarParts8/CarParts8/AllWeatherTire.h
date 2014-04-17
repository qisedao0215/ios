//
//  AllWeatherTire.h
//  CarPartsV4
//
//  Created by qingyun on 14-3-15.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "Tire.h"

//关于适应所有天气的Tire类的声明与定义
@interface AllWeatherTire : Tire
{
    float rainHanding;
    float snowHanding;
}

- (void)setRainHanding:(float)newRainHaning;
- (float)rainHanding;


- (void)setSnowHanding:(float)newSnowHanding;
- (float)snowHanding;

@end
