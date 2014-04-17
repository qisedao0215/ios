//
//  AllWeatherTire.m
//  CarPartsV4
//
//  Created by qingyun on 14-3-15.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "AllWeatherTire.h"

@implementation AllWeatherTire
//如果我们自己不去实现synthesize方法，那么实际系统会为我们自动生成如下这样风格的代码。
//这个代码实际是描述，你用的setName:(NSString*)name; (NSString*)name;实际上操作
//的实例变量是_name;
//@synthesize name = _name;
//@synthesize name = tireName;

- (id)initWithPressure:(float)newPressure TreadDepth:(float)newTreadDepth
{
    if (self = [super initWithPressure:newPressure TreadDepth:newTreadDepth]) {
        self.rainHanding = 200.3;
        self.snowHanding = 300.4;
    }
    return self;
}

- (NSString*)description
{
    NSString *desc;
    desc = [NSString stringWithFormat:@"AllWeatherTier:name is %@,%.1f,%.1f, %.1f, %.1f",
            self.name,self.pressure,self.treadDepth,self.rainHanding,self.snowHanding];
    return desc;
    
}

@end