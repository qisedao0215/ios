//
//  main.m
//  EngineRetainCount
//
//  Created by qingyun on 14-3-14.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

//在这里需要包含头文件的原因是由于我们要真正的实例化一个Car对象， 就需要了解到关于car声明的所
//有相关信息，所以不能使用@class前向声明
#import "Car.h"
#import "Engine.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Car *myCar = [Car new];
//        Car *myCar2 = [Car new];
        //retainCount = 1由于是main函数里创建了engine对象， 所以我们说main拥有engine对象
        Engine *engine = [Engine new];
        
        NSLog(@"%@",engine);
        //在这里销毁
        //   由于让Car对象myCar的engine成员变量指向了engine对象，所以我们说myCar也拥有eingine对象
        [myCar setEngine:engine];
        
        //  在main函数里我们的engine销毁了， Car对象的engine成员变量也随者销毁，所以如果使用myCar的成员变量
        //    engine,一家会出现问题的。 这样内存问题是一个未定义的问题。
        [engine release];
        
//        Engine *tempEngine = [myCar engine];
//        [myCar2 setEngine:tempEngine];
        //    Engine *engine2 = [myCar engine];
        //    NSLog(@"%ld",[engine2 retainCount]);
        //    NSLog(@"%@",engine2);
        [myCar release];
    }
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    //
    
    
    //
    
    [pool release];
    
    return 0;
}

