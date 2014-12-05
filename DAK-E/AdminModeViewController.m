//
//  AdminModeViewController.m
//  DAK-E
//
//  Created by Milena Gnoińska on 04.11.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "AdminModeViewController.h"
#import "UIColor+customColors.h"

@interface AdminModeViewController ()

@property (weak, nonatomic) IBOutlet UIButton *selectButton;
@property (weak, nonatomic) IBOutlet UIButton *changeButton;

@end

@implementation AdminModeViewController

- (void)viewDidLoad {
    
    // Do any additional setup after loading the view.
    [[self navigationController] setNavigationBarHidden:YES animated:NO];
    self.view.backgroundColor = [UIColor lighterGreen];
    UIView *topBar = [[UIView alloc] init];
    [topBar setTranslatesAutoresizingMaskIntoConstraints:NO];
    topBar.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:topBar];
    UIButton *leftNavButt =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [leftNavButt addTarget:self
                    action:@selector(leftNavButtHasBeenPressed)
          forControlEvents:UIControlEventTouchUpInside];
    [leftNavButt setTitle:@"< Forrige" forState:UIControlStateNormal];
    leftNavButt.frame = CGRectMake(3, 10, 150, 50);
    leftNavButt.tintColor = [UIColor darkerGreen];
    [leftNavButt setFont:[UIFont systemFontOfSize:36]];
    [topBar addSubview:leftNavButt];
    
    UILabel *lab =[[UILabel alloc] initWithFrame:CGRectMake(0,10,768,51)];
    [lab setTextAlignment:UITextAlignmentCenter];
    [lab setTextColor:[UIColor darkerGreen]];
    [lab setFont:[UIFont systemFontOfSize:40]];
    lab.text=@"Administrator";
    [topBar addSubview:lab];
    
    // Width constraint
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:topBar
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:1
                                                           constant:0]];
    
    // Height constraint
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:topBar
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeHeight
                                                         multiplier:0.07
                                                           constant:0]];
    
    // Center horizontally
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:topBar
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    [super viewDidLoad];
    self.selectButton.titleLabel.font = [UIFont systemFontOfSize:24.0];
    self.changeButton.titleLabel.font = [UIFont systemFontOfSize:24.0];
}

- (void)leftNavButtHasBeenPressed{
    [self.navigationController popToRootViewControllerAnimated:YES];
}


-(BOOL)prefersStatusBarHidden { return YES; }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)selectQuestionnaire:(id)sender {
    [self performSegueWithIdentifier:@"segueToSelectQuestionaire" sender:self];
}

- (IBAction)changeColors:(id)sender {
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
