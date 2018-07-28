//
//  Cat.m
//  test
//
//  Created by Hsusue on 2018/7/28.
//  Copyright © 2018年 Hsusue. All rights reserved.
//

#import "Cat.h"
#import <objc/runtime.h>


@implementation Cat

#pragma mark - addMethod
+ (BOOL)resolveInstanceMethod:(SEL)sel {
    if (sel == NSSelectorFromString(@"showMOE")) {
        // 第一个参数：给哪个类添加方法

        // 第二个参数：添加方法的方法编号

        // 第三个参数：添加方法的函数实现（函数地址）

        // 第四个参数：函数的类型，(返回值+参数类型) v:void @:对象->self :表示SEL->_cmd

        class_addMethod(self, sel, (IMP)showMOE, "v@:");
        return YES;
    }
    
    return [super resolveInstanceMethod:sel];
}

void showMOE(id self, SEL _cmd) {
    NSLog(@"动态添加了一个卖萌的方法");
}

@end
