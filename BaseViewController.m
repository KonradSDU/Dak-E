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
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lighterGreen];
    
    
    UIView *topBar = [[UIView alloc] init];
    [topBar setTranslatesAutoresizingMaskIntoConstraints:NO];
    topBar.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:topBar];
    
    /*UIImageView *img =[[UIImageView alloc] initWithFrame:CGRectMake(130,5,120,51)];
    img.image=[UIImage imageNamed:@"logo"];
    [topBar addSubview:img];
    */
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
    
    /*[self.view addConstraint:[NSLayoutConstraint constraintWithItem:img
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:topBar
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:0.5
                                                           constant:0]];*/
    
    
    
}

-(BOOL)prefersStatusBarHidden { return YES; }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
