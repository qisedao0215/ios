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

@property (assign,nonatomic) float pressure;
@property (assign) float treadDepth;

- (id)initWithPressure:(float)newPressure TreadDepth:(float)newTreadDepth;
//对于已经知道默认的treadDepth，
- (id)initPressure:(float)newPressure;

- (id)initTreadDepth:(float)newTreadDepth;

@end
