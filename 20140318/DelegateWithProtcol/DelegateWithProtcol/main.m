//
//  main.m
//  DelegateWithProtcol
//
//  Created by qingyun on 14-3-18.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "JianGuo.h"
#import "KunPeng.h"
#import "PengTao.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        JianGuo *jg = [[JianGuo alloc] init];
        KunPeng *kp = [[KunPeng alloc] init];
        PengTao *pt = [[PengTao alloc] init];
        jg.delegate = kp;
        
        [jg startSleep];
        
        
        [kp setSomething];
        
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}

