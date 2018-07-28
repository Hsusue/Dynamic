//
//  ViewController.m
//  test
//
//  Created by Hsusue on 2018/7/27.
//  Copyright © 2018年 Hsusue. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "Cat.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 加方法
    Cat *juju = [[Cat alloc] init];
    [juju performSelector:@selector(showMOE)];
    
    
    // 交换方法
    UIImage *image = [UIImage imageNamed:@"1"];
    
    // 加属性
    [juju performSelector:@selector(setName:) withObject:@"juju"];
    NSLog(@"%@",[juju performSelector:@selector(name)]);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
