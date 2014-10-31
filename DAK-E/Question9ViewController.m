//
//  Question9ViewController.m
//  DAK-E
//
//  Created by david on 22.10.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question9ViewController.h"
#import "Question10ViewController.h"

@interface Question9ViewController ()

@end

@implementation Question9ViewController

- (void)viewDidLoad {
    self.questionNumber=9;
    self.segueToNextControllerName = @"segueToQuestion10";
    [super viewDidLoad];
    self.rightNavButt.hidden=YES;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)button1:(id)sender {
    self.list.Q9Answer=@"To gange dagligt eller oftere";
}
- (IBAction)button2:(id)sender {
    self.list.Q9Answer=@"En gang dagligt";
}
- (IBAction)button3:(id)sender {
    self.list.Q9Answer=@"Nogle gange i løbet af ugen";
}
- (IBAction)button4:(id)sender {
    self.list.Q9Answer=@"En gang om ugen eller sjældnere";
}

-(void)viewDidAppear:(BOOL)animated{
    if(self.list.Q9Answer!=nil){
        self.rightNavButt.hidden = NO;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question10ViewController *vc = [segue destinationViewController];
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
