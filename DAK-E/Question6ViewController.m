//
//  Question6ViewController.m
//  DAK-E
//
//  Created by david on 22.10.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question6ViewController.h"
#import "Question7ViewController.h"

@interface Question6ViewController ()

@property (weak, nonatomic) NSMutableString *answers;

@end

@implementation Question6ViewController

- (void)viewDidLoad {
    self.questionNumber=6;
    self.rightNavigationButtonTit=@"";
    self.segueToNextControllerName = @"segueToQ7";
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1:(id)sender {
    [self.answers appendString:@"Meget uenig"];
}
- (IBAction)button2:(id)sender {
    [self.answers appendString:@"Uenig"];
}
- (IBAction)button3:(id)sender {
    [self.answers appendString:@"Måske"];
}
- (IBAction)button4:(id)sender {
    [self.answers appendString:@"Enig"];
}
- (IBAction)button5:(id)sender {
    [self.answers appendString:@"Meget enig"];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question7ViewController *vc = [segue destinationViewController];
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
