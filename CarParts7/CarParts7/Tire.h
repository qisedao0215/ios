//
//  Tire.h
//  CarPartsV4
//
//  Created by qingyun on 14-3-15.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

//关于Tire类的声明
@interface Tire : NSObject
{
    float pressure;
    float treadDepth;
}

- (void)setPressure:(float)newPressure;
- (float)pressure;

- (void)setTreadDepth:(float)newTreadDepth;
- (float)treadDepth;

@end
