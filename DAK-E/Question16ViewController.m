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

@end

@implementation Question16ViewController

- (void)viewDidLoad {
    self.questionNumber=16;
    self.segueToNextControllerName = @"segue1617";
    [super viewDidLoad];
    self.rightNavButt.hidden=YES;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1:(id)sender {
    self.list.Q16Answer=@"Forhøjet blodtryk";
    [self addLayerToTheButton:sender];
}
- (IBAction)button2:(id)sender {
    self.list.Q16Answer=@"Forhøjet kolesterol";
    [self addLayerToTheButton:sender];
}
- (IBAction)button3:(id)sender {
    self.list.Q16Answer=@"Blodprop i hjertet";
    [self addLayerToTheButton:sender];
}
- (IBAction)button4:(id)sender {
    self.list.Q16Answer=@"Blodprop i hjernen";
    [self addLayerToTheButton:sender];
}
- (IBAction)button5:(id)sender {
    self.list.Q16Answer=@"Blodprop i lunger eller ben";
    [self addLayerToTheButton:sender];
}
- (IBAction)button6:(id)sender {
    self.list.Q16Answer=@"Type-1 diabetes";
    [self addLayerToTheButton:sender];
}
- (IBAction)button7:(id)sender {
    self.list.Q16Answer=@"Type-2 diabetes";
    [self addLayerToTheButton:sender];
}
- (IBAction)button8:(id)sender {
    self.list.Q16Answer=@"KOL";
    [self addLayerToTheButton:sender];
}
- (IBAction)button9:(id)sender {
    self.list.Q16Answer=@"Slidgigt/ artrose";
    [self addLayerToTheButton:sender];
}

-(void)addLayerToTheButton:(UIButton *) button{
    [[button layer] setBorderWidth:2.0f];
    [[button layer] setBorderColor:[UIColor whiteColor].CGColor];
}


-(void)viewDidAppear:(BOOL)animated{
    if(self.list.Q16Answer!=nil){
        self.rightNavButt.hidden = NO;
    }
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
