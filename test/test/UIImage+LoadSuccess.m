//
//  UIImage+LoadSuccess.m
//  test
//
//  Created by Hsusue on 2018/7/28.
//  Copyright © 2018年 Hsusue. All rights reserved.
//

#import "UIImage+LoadSuccess.h"
#import <objc/runtime.h>

@implementation UIImage (LoadSuccess)

+ (void)load {
    Method imageNamedMethod = class_getClassMethod(self, @selector(imageNamed:));
    
    Method ln_imageNamedMethod = class_getClassMethod(self, @selector(ln_imageNamed:));
    
    method_exchangeImplementations(imageNamedMethod, ln_imageNamedMethod);
}

+ (UIImage *)ln_imageNamed:(NSString *)name {
    UIImage *image = [UIImage ln_imageNamed:name];
    if (image) {
        NSLog(@"加载成功");
    } else {
        NSLog(@"加载失败");
    }
    return image;
}

@end
