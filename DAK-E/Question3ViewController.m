//
//  Question3ViewController.m
//  DAK-E
//
//  Created by david on 22.10.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question3ViewController.h"
#import "BaseViewController.h"
#import "Question4ViewController.h"

@interface Question3ViewController ()

@end

@implementation Question3ViewController

- (void)viewDidLoad {
    self.questionNumber=3;
    self.segueToNextControllerName = @"segueToQuestion4";
    NSLog(@"%@",self.list.Q2Height);
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question4ViewController *vc = [segue destinationViewController];
    vc.list=self.list;
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
