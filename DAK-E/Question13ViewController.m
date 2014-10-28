//
//  ThirteenthViewController.m
//  DAK-E
//
//  Created by Milena Gnoińska on 22.10.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question13ViewController.h"
#import "Question14ViewController.h"

@interface Question13ViewController ()

@end

@implementation Question13ViewController

- (void)viewDidLoad {
    // Do any additional setup after loading the view.
    self.questionNumber = 13;
    self.segueToNextControllerName = @"segue1314";
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question14ViewController *vc = [segue destinationViewController];
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
