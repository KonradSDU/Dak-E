//
//  Question5ViewController.m
//  DAK-E
//
//  Created by david on 22.10.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question5ViewController.h"
#import "Question6ViewController.h"

@interface Question5ViewController ()


@end

@implementation Question5ViewController

- (void)viewDidLoad {
    self.questionNumber=5;
    self.segueToNextControllerName = @"segueToQuestion6";
    [super viewDidLoad];
    self.rightNavButt.hidden=YES;
    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)button1:(id)sender {
    self.list.Q5Answer=@"Nej, aldrig";
    [self addLayerToTheButton:sender];
}
- (IBAction)button2:(id)sender {
    self.list.Q5Answer=@"Kun når jeg er forkølet eller har hals- eller lungebetændelse";
    [self addLayerToTheButton:sender];
}
- (IBAction)button3:(id)sender {
    self.list.Q5Answer=@"Ja, et par dage om måneden";
    [self addLayerToTheButton:sender];
}
- (IBAction)button4:(id)sender {
    self.list.Q5Answer=@"Ja, de fleste dage på en uge";
    [self addLayerToTheButton:sender];
}
- (IBAction)button5:(id)sender {
    self.list.Q5Answer=@"Ja, alle dage";
    [self addLayerToTheButton:sender];
}

-(void)addLayerToTheButton:(UIButton *) button{
    [[button layer] setBorderWidth:2.0f];
    [[button layer] setBorderColor:[UIColor whiteColor].CGColor];
}

-(void)viewDidAppear:(BOOL)animated{
    if(self.list.Q5Answer!=nil){
        self.rightNavButt.hidden = NO;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question6ViewController *vc = [segue destinationViewController];
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
