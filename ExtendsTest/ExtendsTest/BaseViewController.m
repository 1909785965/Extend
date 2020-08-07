//
//  BaseViewController.m
//  ExtendsTest
//
//  Created by tpv tpv on 17/12/29.
//  Copyright © 2017年 xumxum. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()
{
  UIActivityIndicatorView *_activityIndicator;
}

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)writeSomething
{
    NSLog(@"This is Extends");
}



-(void)showToolView:(BOOL)show
{
    if (show) {
        
        if (_ToolView == nil) {
            _ToolView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
            [_ToolView setBackgroundColor:[UIColor redColor]];
            [self.view addSubview:_ToolView];
        }
        
    }else{
      
        [_ToolView removeFromSuperview];
        _ToolView = nil;
    }
   

}

#pragma mark -
-(void)showActivityIndicator:(BOOL)show {
    dispatch_async(dispatch_get_main_queue(), ^{
        
        if(show) {
            if (!_activityIndicator) {
                _activityIndicator=[[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
                [_activityIndicator setColor:[UIColor grayColor]];
                
                _activityIndicator.hidesWhenStopped=YES;
                
                // 设置指示器位置
                
                _activityIndicator.center = CGPointMake(self.view.frame.size.width * 0.5f, self.view.frame.size.height * 0.4f);
                
                [self.view addSubview:_activityIndicator];
                
            }
            
            _activityIndicator.hidden = NO;
            
            [_activityIndicator startAnimating];
        }
        else{
            
            _activityIndicator.hidden = YES;
            [_activityIndicator stopAnimating];
            _activityIndicator=nil;
            
        }
        
    });
}

@end
