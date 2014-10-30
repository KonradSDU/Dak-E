//
//  BaseViewController.m
//  DAK-E
//
//  Created by Konrad Gnoinski on 21/10/14.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "BaseViewController.h"
#import "UIColor+customColors.h"

@interface BaseViewController ()
@end

@implementation BaseViewController

- (void)viewDidLoad {
    [[self navigationController] setNavigationBarHidden:YES animated:NO];
    self.view.backgroundColor = [UIColor lighterGreen];
    if(self.leftNavigationButtonTit == nil){
        _leftNavigationButtonTit= @"< Forrige";
    }
    if(self.rightNavigationButtonTit == nil){
        _rightNavigationButtonTit = @"Næste >";
    }
    
    UIView *topBar = [[UIView alloc] init];
    [topBar setTranslatesAutoresizingMaskIntoConstraints:NO];
    topBar.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:topBar];
    
    UILabel *lab =[[UILabel alloc] initWithFrame:CGRectMake(0,10,768,51)];
    [lab setTextAlignment:UITextAlignmentCenter];
    [lab setTextColor:[UIColor darkerGreen]];
    [lab setFont:[UIFont systemFontOfSize:40]];
    lab.text=@"Name Surname";
    [topBar addSubview:lab];
    
    UIButton *leftNavButt =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [leftNavButt addTarget:self
                    action:@selector(leftNavButtHasBeenPressed)
          forControlEvents:UIControlEventTouchUpInside];
    [leftNavButt setTitle:_leftNavigationButtonTit forState:UIControlStateNormal];
    leftNavButt.frame = CGRectMake(3, 10, 150, 50);
    leftNavButt.tintColor = [UIColor darkerGreen];
    [leftNavButt setFont:[UIFont systemFontOfSize:36]];
    [topBar addSubview:leftNavButt];
    
    _rightNavButt=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_rightNavButt addTarget:self
                     action:@selector(rightNavButtHasBeenPressed)
           forControlEvents:UIControlEventTouchUpInside];
    [_rightNavButt setTitle:_rightNavigationButtonTit forState:UIControlStateNormal];
    _rightNavButt.frame = CGRectMake(620, 10, 150, 50);
    _rightNavButt.tintColor = [UIColor darkerGreen];
    [_rightNavButt setFont:[UIFont systemFontOfSize:36]];
    [topBar addSubview:_rightNavButt];
    
    
    UIProgressView *progressView = [[UIProgressView alloc] init];
    progressView.frame = CGRectMake(0,100,768,100);
    [progressView setTransform:CGAffineTransformMakeScale(1.0, 28.0)];
    [progressView setProgress:_questionNumber/18 animated:NO];
    progressView.progressTintColor = [UIColor darkerGreen];
    [self.view addSubview:progressView];
    
    UILabel *questionLab =[[UILabel alloc] initWithFrame:CGRectMake(0,75,768,51)];
    [questionLab setTextAlignment:UITextAlignmentCenter];
    [questionLab setTextColor:[UIColor whiteColor]];
    [questionLab setFont:[UIFont systemFontOfSize:40]];
    questionLab.text=[NSString stringWithFormat:@"%d/18",(int)_questionNumber];
    [self.view addSubview:questionLab];
    
    // Width constraint
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:topBar
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:1
                                                           constant:0]];
    
    // Height constraint
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:topBar
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeHeight
                                                         multiplier:0.07
                                                           constant:0]];
    
    // Center horizontally
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:topBar
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    [super viewDidLoad];
}

-(BOOL)prefersStatusBarHidden { return YES; }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)leftNavButtHasBeenPressed{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)rightNavButtHasBeenPressed{
    [self performSegueWithIdentifier:_segueToNextControllerName sender:self];
}

@end
