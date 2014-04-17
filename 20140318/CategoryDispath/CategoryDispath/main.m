//
//  main.m
//  CategoryDispath
//
//  Created by qingyun on 14-3-18.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Things.h"
#import "Things+CategoryThing1.h"
#import "Things+CategoryThing2.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Things *t  = [[Things alloc] init];
        [t setTing1:100];
        [t setTing2:200];
        [t setTing3:300];
        [t setTing4:400];
        [t setTing5:500];
        
        NSLog(@"%@",t);
        
        
    }
    return 0;
}

