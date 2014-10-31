//
//  Question16ViewController.m
//  DAK-E
//
//  Created by david on 22.10.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question16ViewController.h"
#import "Question17ViewController.h"

@interface Question16ViewController ()
@property (weak,nonatomic) NSMutableString *answers;
@end

@implementation Question16ViewController

- (void)viewDidLoad {
    self.questionNumber=16;
    self.rightNavigationButtonTit=@"";
    self.segueToNextControllerName = @"segue1617";
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1:(id)sender {
    [self.answers appendString:@"Forhøjet blodtryk"];
}
- (IBAction)button2:(id)sender {
    [self.answers appendString:@"Forhøjet kolesterol"];
}
- (IBAction)button3:(id)sender {
    [self.answers appendString:@"Blodprop i hjertet"];
}
- (IBAction)button4:(id)sender {
    [self.answers appendString:@"Blodprop i hjernen"];
}
- (IBAction)button5:(id)sender {
    [self.answers appendString:@"Blodprop i lunger eller ben"];
}
- (IBAction)button6:(id)sender {
    [self.answers appendString:@"Type-1 diabetes"];
}
- (IBAction)button7:(id)sender {
    [self.answers appendString:@"Type-2 diabetes"];
}
- (IBAction)button8:(id)sender {
    [self.answers appendString:@"KOL"];
}
- (IBAction)button9:(id)sender {
    [self.answers appendString:@"Slidgigt/ artrose"];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question17ViewController *vc = [segue destinationViewController];
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
