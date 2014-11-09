//
//  Question4ViewController.m
//  DAK-E
//
//  Created by david on 22.10.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question4ViewController.h"
#import "Question5ViewController.h"

@interface Question4ViewController ()

@end

@implementation Question4ViewController

- (void)viewDidLoad {
    self.questionNumber=4;
   // NSLog(@"%@",self.list.Q3Answer);
    self.segueToNextControllerName = @"segueToQuestion5";
    [super viewDidLoad];
    self.rightNavButt.hidden = YES;
    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button1:(id)sender {
    self.list.Q4Answer=@"På intet tidspunkt";
}
- (IBAction)button2:(id)sender {
    self.list.Q4Answer=@"Sjældent";
}
- (IBAction)button3:(id)sender {
    self.list.Q4Answer=@"Af og til";
}
- (IBAction)button4:(id)sender {
    self.list.Q4Answer=@"Ofte";
}
- (IBAction)button5:(id)sender {
    self.list.Q4Answer=@"Hele tiden";
}

-(void)viewDidAppear:(BOOL)animated{
    if(self.list.Q4Answer!=nil){
        self.rightNavButt.hidden = NO;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question5ViewController *vc = [segue destinationViewController];
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
