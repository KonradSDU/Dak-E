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

//@property (nonatomic) NSMutableString *answers;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;

@end

@implementation Question12ViewController

- (void)viewDidLoad {
    // Do any additional setup after loading the view.
    self.questionNumber = 12;
    self.segueToNextControllerName = @"segue1213";
    self.button1.titleLabel.font =  [UIFont systemFontOfSize:24.0];
    self.button2.titleLabel.font =  [UIFont systemFontOfSize:24.0];
    self.button3.titleLabel.font =  [UIFont systemFontOfSize:24.0];
    self.button4.titleLabel.font =  [UIFont systemFontOfSize:24.0];
    [super viewDidLoad];
    self.rightNavButt.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button1:(id)sender {
   self.list.Q12Answer = @"To gange dagligt eller oftere";
}
- (IBAction)button2:(id)sender {
    self.list.Q12Answer = @"En gang dagligt";
}
- (IBAction)button3:(id)sender {
    self.list.Q12Answer = @"Nogle gange i løbet af ugen";
}
- (IBAction)button4:(id)sender {
    self.list.Q12Answer = @"En gang om ugen eller sjældnere";
}

-(void)viewDidAppear:(BOOL)animated{
    if(self.list.Q12Answer!=nil){
        self.rightNavButt.hidden = NO;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question13ViewController *vc = [segue destinationViewController];
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
