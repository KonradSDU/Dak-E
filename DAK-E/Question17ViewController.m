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
    NSLog(@"%@", self.list.Q3Answer);
    self.segueToNextControllerName = @"segue1718";
    [super viewDidLoad];
    self.rightNavButt.hidden = YES;
    self.textField.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)textFieldDidChange:(id)sender {
    NSRange range = [self.textField.text rangeOfString:@"@"];
    NSRange range2 = [self.textField.text rangeOfString:@"."];
    if (range.location!=NSNotFound && range2.location!=NSNotFound){
        self.list.Q17Answer = self.textField.text;
        self.rightNavButt.hidden = NO;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question18ViewController *vc = [segue destinationViewController];
    vc.list=self.list;
}

-(void)viewDidAppear:(BOOL)animated{
    if(self.list.Q17Answer!=nil){
        self.rightNavButt.hidden = NO;
    }
}

/*- (void)textFieldDidBeginEditing:(UITextField *)textField
{
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
}*/

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
