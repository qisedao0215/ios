//
//  main.m
//  DelegateSample
//
//  Created by qingyun on 14-3-18.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JianGuo.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        JianGuo *jianguo = [[JianGuo alloc] init];
        [jianguo startSleep:10];
        
        [[NSRunLoop currentRunLoop] run ];
        NSLog(@"after run loop");
        
    }
    return 0;
}

