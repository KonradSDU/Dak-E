//
//  Question2ViewController.m
//  DAK-E
//
//  Created by Konrad Gnoinski on 22/10/14.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question2ViewController.h"

@interface Question2ViewController ()

@end

@implementation Question2ViewController

- (void)viewDidLoad {
    self.questionNumber = 2;
    self.segueToNextControllerName = @"segueToQuestion3";
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
