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
@property (readwrite) float questionNumber; //need to be setted for evry screen
@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lighterGreen];
    
    UIView *topBar = [[UIView alloc] init];
    [topBar setTranslatesAutoresizingMaskIntoConstraints:NO];
    topBar.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:topBar];
    
    UILabel *lab =[[UILabel alloc] initWithFrame:CGRectMake(0,5,768,51)];
    [lab setTextAlignment:UITextAlignmentCenter];
    [lab setTextColor:[UIColor darkerGreen]];
    [lab setFont:[UIFont systemFontOfSize:40]];
    lab.text=@"Name Surname";
    [topBar addSubview:lab];
    
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
    
    // Width constraint, half of parent view width
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:topBar
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:1
                                                           constant:0]];
    
    // Height constraint, half of parent view height
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
    
    /*[self.view addConstraint:[NSLayoutConstraint constraintWithItem:lab
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:topBar
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:1
                                                           constant:0.5]];*/
    
    
    
}

-(BOOL)prefersStatusBarHidden { return YES; }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
