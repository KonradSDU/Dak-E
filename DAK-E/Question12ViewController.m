//
//  TwelfthViewController.m
//  DAK-E
//
//  Created by Milena Gnoińska on 22.10.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question12ViewController.h"
#import "Question13ViewController.h"

@interface Question12ViewController ()

@property (nonatomic) NSMutableString *answers;

@end

@implementation Question12ViewController

- (void)viewDidLoad {
    // Do any additional setup after loading the view.
    self.questionNumber = 12;
    self.rightNavigationButtonTit=@"";
    self.segueToNextControllerName = @"segue1213";
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button1:(id)sender {
    [self.answers appendString:@"To gange dagligt eller oftere"];
}
- (IBAction)button2:(id)sender {
    [self.answers appendString:@"En gang dagligt"];
}
- (IBAction)button3:(id)sender {
    [self.answers appendString:@"Nogle gange i løbet af ugen"];
}
- (IBAction)button4:(id)sender {
    [self.answers appendString:@"En gang om ugen eller sjældnere"];
}
-(void)viewDidAppear:(BOOL)animated{
    if(self.list.Q12Answer!=nil){
        self.rightNavButt.hidden = NO;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question13ViewController *vc = [segue destinationViewController];
    self.list.Q12Answer = self.answers;
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
