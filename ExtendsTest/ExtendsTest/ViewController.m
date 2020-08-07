//
//  ViewController.m
//  ExtendsTest
//
//  Created by tpv tpv on 17/12/29.
//  Copyright © 2017年 xumxum. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    
    [self writeSomething];
    [super writeSomething];//调父类的方法
    
    [self showToolView:YES];
    
    
     baseStr = @"This Str from BaseViewController";
     _arr = @[@"1",@"2"];
    
 
    SecViewController * vc = [[SecViewController alloc]init];
    [self.view addSubview:vc.view];
}

-(void)writeSomething
{
    NSLog(@"子类重写方法");
}

@end
