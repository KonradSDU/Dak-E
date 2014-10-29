//
//  FifteenthViewController.m
//  DAK-E
//
//  Created by Milena Gnoińska on 23.10.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question15ViewController.h"
#import "Question16ViewController.h"

@interface Question15ViewController ()

@end

@implementation Question15ViewController

- (void)viewDidLoad {
    // Do any additional setup after loading the view.
    self.questionNumber = 15;
    self.rightNavigationButtonTit=@"";
    self.segueToNextControllerName = @"segue1516";
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button1:(id)sender {
    self.list.Q15Answer = @"Ja";
}
- (IBAction)button2:(id)sender {
    self.list.Q15Answer = @"Ja, men ikke lige nu";
}
- (IBAction)button3:(id)sender {
    self.list.Q15Answer = @"Nej";
}
-(void)viewDidAppear:(BOOL)animated{
    if(self.list.Q15Answer!=nil){
        self.rightNavButt.hidden = NO;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question16ViewController *vc = [segue destinationViewController];
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
