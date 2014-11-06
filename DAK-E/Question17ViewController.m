//
//  SeventeenthViewController.m
//  DAK-E
//
//  Created by Milena Gnoińska on 23.10.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question17ViewController.h"
#import "Question18ViewController.h"

@interface Question17ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation Question17ViewController

- (void)viewDidLoad {
    // Do any additional setup after loading the view.
    self.questionNumber = 17;
    self.segueToNextControllerName = @"segue1718";
    [super viewDidLoad];
    self.rightNavButt.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question18ViewController *vc = [segue destinationViewController];
    self.list.Q17Answer = [NSString stringWithFormat:@"%@", self.textField.text];
    vc.list=self.list;
}

-(void)viewDidAppear:(BOOL)animated{
    if(self.list.Q17Answer!=nil){
        self.rightNavButt.hidden = NO;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField*)textField
{
    [textField resignFirstResponder];
    return YES;
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
