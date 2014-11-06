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

@property (nonatomic) NSMutableString *answers;
@property (weak, nonatomic) IBOutlet UIButton *button1b;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button2b;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;

@end

@implementation Question13ViewController

- (void)viewDidLoad {
    // Do any additional setup after loading the view.
    self.questionNumber = 13;
    self.segueToNextControllerName = @"segue1314";
    self.button1.titleLabel.font =  [UIFont systemFontOfSize:21.0];
    self.button1b.titleLabel.font =  [UIFont systemFontOfSize:21.0];
    self.button2.titleLabel.font =  [UIFont systemFontOfSize:21.0];
    self.button2b.titleLabel.font =  [UIFont systemFontOfSize:21.0];
    self.button3.titleLabel.font =  [UIFont systemFontOfSize:21.0];
    self.button4.titleLabel.font =  [UIFont systemFontOfSize:21.0];
    [super viewDidLoad];
    self.rightNavButt.hidden=YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button1v:(id)sender {
    [self.answers appendString:@"Dyrker motionsidræt eller udfører tungt havearbejde eller lingnende mindst 4 timer om ugen"];
}

- (IBAction)button1:(id)sender {
    [self.answers appendString:@"Dyrker motionsidræt eller udfører tungt havearbejde eller lingnende mindst 4 timer om ugen"];
}
- (IBAction)button2:(id)sender {
    [self.answers appendString:@"Spadserer, cykler eller har anden lettere motion mindst 4 timer om ugen (medregn også søntagsture, lettere havearbejde og cykling/gang til arbejde"];

}
- (IBAction)button2b:(id)sender {
    [self.answers appendString:@"Spadserer, cykler eller har anden lettere motion mindst 4 timer om ugen (medregn også søntagsture, lettere havearbejde og cykling/gang til arbejde"];

}
- (IBAction)button3:(id)sender {
    [self.answers appendString:@"Læser, ser fjernsyn eller har anden stillesiddende beskæftiglese"];
}
- (IBAction)button4:(id)sender {
    [self.answers appendString:@"Træner hårdt og dyrker konkurrenceidræt regelmæsigt og flere gange om ugen"];
}
-(void)viewDidAppear:(BOOL)animated{
    if(self.list.Q13Answer!=nil){
        self.rightNavButt.hidden = NO;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question14ViewController *vc = [segue destinationViewController];
    self.list.Q13Answer = self.answers;
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
