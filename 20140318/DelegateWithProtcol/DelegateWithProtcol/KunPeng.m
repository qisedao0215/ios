//
//  KunPeng.m
//  DelegateWithProtcol
//
//  Created by qingyun on 14-3-18.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "KunPeng.h"

@implementation KunPeng

- (void)setSomething
{
    [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(callJianGuoStudy) userInfo:nil repeats:YES];
}

- (void)callJianGuoStudy
{
    NSLog(@"唱首歌...");
}
@end
