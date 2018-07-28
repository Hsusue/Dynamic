//
//  Cat+name.m
//  test
//
//  Created by Hsusue on 2018/7/28.
//  Copyright © 2018年 Hsusue. All rights reserved.
//

#import "Cat+name.h"
#import <objc/runtime.h>

@implementation Cat (name)
//定义常量 必须是C语言字符串
static char *PersonNameKey = "PersonNameKey";
-(void)setName:(NSString *)name{
    objc_setAssociatedObject(self, PersonNameKey, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(NSString *)name{
    return objc_getAssociatedObject(self, PersonNameKey);
}




@end
