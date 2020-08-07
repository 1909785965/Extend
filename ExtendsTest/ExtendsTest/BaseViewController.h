//
//  BaseViewController.h
//  ExtendsTest
//
//  Created by tpv tpv on 17/12/29.
//  Copyright © 2017年 xumxum. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController
{
    NSString * baseStr;
    NSArray * _arr;
}

@property(strong,nonatomic)NSArray * baseArr;

@property(strong,nonatomic)UIView * ToolView;

-(void)writeSomething;

-(void)showActivityIndicator:(BOOL)show;

-(void)showToolView:(BOOL)show;



@end
