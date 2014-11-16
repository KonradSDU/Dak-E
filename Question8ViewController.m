//
//  Question8ViewController.m
//  DAK-E
//
//  Created by david on 22.10.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question8ViewController.h"
#import "Question9ViewController.h"

@interface Question8ViewController ()

@end

@implementation Question8ViewController

- (void)viewDidLoad {
    self.segueToNextControllerName = @"segueToQuestion9";
    self.questionNumber=8;
    [super viewDidLoad];
    self.rightNavButt.hidden=YES;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button1:(id)sender {
    self.list.Q8Answer=@"Dagligt eller næsten dagligt";
    [self addLayerToTheButton:sender];
}
- (IBAction)button2:(id)sender {
    self.list.Q8Answer=@"Ugentligt";
    [self addLayerToTheButton:sender];
}
- (IBAction)button3:(id)sender {
    self.list.Q8Answer= @"Månedligt";
    [self addLayerToTheButton:sender];
}
- (IBAction)button4:(id)sender {
    self.list.Q8Answer=@"Sjældent";
    [self addLayerToTheButton:sender];
}
- (IBAction)button5:(id)sender {
    self.list.Q8Answer=@"Aldrig";
    [self addLayerToTheButton:sender];
}

-(void)addLayerToTheButton:(UIButton *) button{
    [[button layer] setBorderWidth:2.0f];
    [[button layer] setBorderColor:[UIColor whiteColor].CGColor];
}


-(void)viewDidAppear:(BOOL)animated{
    if(self.list.Q8Answer!=nil){
        self.rightNavButt.hidden = NO;
    }
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question9ViewController *vc = [segue destinationViewController];
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
