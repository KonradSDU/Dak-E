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

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)button:(id)sender;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [[self navigationController] setNavigationBarHidden:YES animated:NO];
    self.view.backgroundColor= [UIColor lighterGreen];
    _label.textColor = [UIColor gray];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
@end
