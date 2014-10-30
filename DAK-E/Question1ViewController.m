//
//  FirstQuestionViewController.m
//  DAK-E
//
//  Created by Milena Gnoińska on 22.10.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question1ViewController.h"
#import "Question2ViewController.h"

@interface Question1ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button5;

@end

@implementation Question1ViewController

- (void)viewDidLoad {
    self.questionNumber = 1;
    self.segueToNextControllerName = @"segueToQ2";
    [super viewDidLoad];
    self.rightNavButt.hidden = YES;
    self.button1.titleLabel.font =  [UIFont systemFontOfSize:24.0];
    self.button2.titleLabel.font =  [UIFont systemFontOfSize:24.0];
    self.button3.titleLabel.font =  [UIFont systemFontOfSize:24.0];
    self.button4.titleLabel.font =  [UIFont systemFontOfSize:24.0];
    self.button5.titleLabel.font =  [UIFont systemFontOfSize:24.0];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1:(id)sender {
    self.list.Q1Answer = @"Fremragende";
}
- (IBAction)button2:(id)sender {
    self.list.Q1Answer = @"Vældigt godt";
}
- (IBAction)button3:(id)sender {
    self.list.Q1Answer = @"Godt";
}
- (IBAction)button4:(id)sender {
    self.list.Q1Answer = @"Mindre godt";
}
- (IBAction)button5:(id)sender {
    self.list.Q1Answer = @"Dårligt";
}
-(void)viewDidAppear:(BOOL)animated{
    if(self.list.Q1Answer!=nil){
        self.rightNavButt.hidden = NO;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question2ViewController *vc = [segue destinationViewController];
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
