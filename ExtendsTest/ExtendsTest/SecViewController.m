//
//  SecViewController.m
//  ExtendsTest
//
//  Created by tpv tpv on 17/12/29.
//  Copyright © 2017年 xumxum. All rights reserved.
//

#import "SecViewController.h"
#import "OneManager.h"
#import "TwoManager.h"

@interface SecViewController ()
{
    NSMutableArray  * managerArr;
}

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    
    [self showToolView:YES];
    
    OneManager  * firstMan = [[OneManager alloc]init];
    TwoManager * secMan = [[TwoManager alloc]init];
    
    managerArr = [[NSMutableArray alloc]init];
    [managerArr addObject:firstMan];
    [managerArr addObject:secMan];
    
    [self start];
    
    
}

-(void)start
{
    for (id man in managerArr) {
        
        [man doSometing];
    }

}


@end
