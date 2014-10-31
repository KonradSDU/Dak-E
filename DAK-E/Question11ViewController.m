//
//  Question11ViewController.m
//  DAK-E
//
//  Created by david on 22.10.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question11ViewController.h"
#import "Question12ViewController.h"

@interface Question11ViewController ()
@property (weak,nonatomic) NSMutableString *answers;
@end

@implementation Question11ViewController

- (void)viewDidLoad {
    self.questionNumber=11;
    self.rightNavigationButtonTit=@"";
    self.segueToNextControllerName = @"segue1112";
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1:(id)sender {
    [self.answers appendString:@"Tre gange om ugen eller oftere"];
}
- (IBAction)button2:(id)sender {
    [self.answers appendString:@"To gange om ugen"];
}
- (IBAction)button3:(id)sender {
    [self.answers appendString:@"En gang om ugen"];
}
- (IBAction)button4:(id)sender {
    [self.answers appendString:@"Et par gange om måneden eller sjældnere"];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question12ViewController *vc = [segue destinationViewController];
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
