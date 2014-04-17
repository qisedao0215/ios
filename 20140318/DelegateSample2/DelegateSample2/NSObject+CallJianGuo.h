//
//  NSObject+CallJianGuo.h
//  DelegateSample
//
//  Created by qingyun on 14-3-18.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

//由于ＣallJianGuo这个类别，是NSObject的类别，
//意味着，所有的objectivie-c对象，都可以拥有callMe这个方法。
@interface NSObject (CallJianGuo)
- (void) callMe;
@end
