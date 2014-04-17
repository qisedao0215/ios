//
//  CallMe.h
//  DelegateWithProtcol
//
//  Created by qingyun on 14-3-18.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

//用于声明一个正式协议 。协议的名称CallMe 在这里CallMe协议继际NSObject协议，
//需要把NSObject类和NSObject协议区分开
@protocol CallMe <NSObject>
- (void)callJianGuoStudy;
@end
