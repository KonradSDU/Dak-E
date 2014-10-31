//
//  Question10ViewController.m
//  DAK-E
//
//  Created by david on 22.10.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question10ViewController.h"
#import "Question11ViewController.h"

@interface Question10ViewController ()

@end

@implementation Question10ViewController

- (void)viewDidLoad {
    self.questionNumber=10;
    self.segueToNextControllerName = @"segueToQuestion11";
    [super viewDidLoad];
    self.rightNavButt.hidden=YES;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1:(id)sender {
    self.list.Q10Answer=@"To gange dagligt eller oftere";
}
- (IBAction)button2:(id)sender {
    self.list.Q10Answer=@"En gang dagligt";
}
- (IBAction)button3:(id)sender {
    self.list.Q10Answer=@"Nogle gange i løbet af ugen";
}
- (IBAction)button4:(id)sender {
    self.list.Q10Answer=@"En gang om ugen eller sjældnere";
}

-(void)viewDidAppear:(BOOL)animated{
    if(self.list.Q10Answer!=nil){
        self.rightNavButt.hidden = NO;
    }
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question11ViewController *vc = [segue destinationViewController];
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
