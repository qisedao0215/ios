//
//  main.m
//  RetainCountTest
//
//  Created by qingyun on 14-3-14.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "RetainTracker.h"
int main(int argc, const char * argv[])
{
    /*

//    RetainTracker *tracker = [[RetainTracker alloc] init];
    
    RetainTracker *tracker = [RetainTracker new];
//  tracker在这里我们叫做消息的接收者。当向tracker发送init消息的时候， oc的调度机制会去RetainTracker
//  的类里查询init方法。当调用init方法的时候， 会在init方法里隐藏传一个指针self，这个self实际表示的就是这里的
//  tracker对象。
    
    [tracker retain]; //2
    NSLog(@"%ld",[tracker retainCount]);
    
    [tracker retain]; //3
     NSLog(@"%ld",[tracker retainCount]);
    
    [tracker release];//2
    NSLog(@"%ld",[tracker retainCount]);
    
    [tracker release];//1
      NSLog(@"%ld",[tracker retainCount]);
    
    [tracker retain]; //2
     NSLog(@"%ld",[tracker retainCount]);
    
    [tracker release];//1
    NSLog(@"%ld",[tracker retainCount]);
    
    [tracker release];//1
//    NSLog(@"after release %ld",[tracker retainCount]);
   
    */
    
    /*
    NSAutoreleasePool *pool;
    pool = [[NSAutoreleasePool alloc] init];
    
    RetainTracker *tracker;
    tracker = [RetainTracker new];//retainCount = 1;
    [tracker retain];//retainCount = 2
    
    [tracker autorelease];//retainCount = 2
    [tracker release]; //retatinCount = 1;
    
    NSLog(@"releasing pool....");
    [pool release]; //tracker retainCount = ?
    
    
    @autoreleasepool {
        RetainTracker *tracker2;
        tracker2 = [RetainTracker new];//retainCount = 1
        [tracker2 retain];
        [tracker2 autorelease];
        [tracker2 release];
        NSLog(@"reslease pool second...");
    }
     
//  真正正确的结果，是tracker的dealloc方法被调用。
    
    NSLog(@"end....");
    */
    
    
   
    return 0;
}

