//
//  Car.h
//  EngineRetainCount
//
//  Created by qingyun on 14-3-14.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

//前向声明，防止文件依赖关系
@class Engine;
@interface Car : NSObject
{
    Engine *engine;
}

- (void)setEngine:(Engine*)newEngine;
- (Engine*)engine;
@end
