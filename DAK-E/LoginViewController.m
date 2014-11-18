//
//  LoginViewController.m
//  DAK-E
//
//  Created by Konrad Gnoinski on 28/10/14.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "LoginViewController.h"
#import "UIColor+customColors.h"
#import "QuestionaireAnswersList.h"
#import "Question1ViewController.h"
#import "DatabaseManager.h"
#import "Questionaire.h"
#import "Question.h"
#import "SubQuestion.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)button:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *adminButton;
- (IBAction)adminMode:(id)sender;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [[self navigationController] setNavigationBarHidden:YES animated:NO];
    self.view.backgroundColor= [UIColor lighterGreen];
    _label.textColor = [UIColor gray];
    [super viewDidLoad];
}

-(BOOL)prefersStatusBarHidden { return YES; }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button:(id)sender {
    [self performSegueWithIdentifier:@"segueToQ1" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    QuestionaireAnswersList *list = [[QuestionaireAnswersList alloc]init];
    Question1ViewController *vc = [segue destinationViewController];
    vc.list=list;
}
- (IBAction)adminMode:(id)sender {
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Enter password:"
                                                   message:nil
                                                  delegate:self
                                         cancelButtonTitle:@"Cancel"
                                         otherButtonTitles:@"OK", nil];
    alertView.alertViewStyle = UIAlertViewStyleSecureTextInput;
    [alertView show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    
    if ([title isEqualToString:@"OK"]){
        UITextField *password = [alertView textFieldAtIndex:0];
        if ([password.text isEqualToString:@"a"]){
            [self performSegueWithIdentifier:@"segueToAdminMode" sender:nil];
            
        }
    }
}

@end
