//
//  FourteenthViewController.m
//  DAK-E
//
//  Created by Milena Gnoińska on 23.10.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question14ViewController.h"
#import "Question15ViewController.h"
#import "M13Checkbox.h"
#import "UIColor+customColors.h"


@interface Question14ViewController ()

@property (nonatomic) M13Checkbox *allDefaults;
@property (nonatomic) M13Checkbox *allDefaults2;
@property (nonatomic) M13Checkbox *allDefaults3;
@property (nonatomic) M13Checkbox *allDefaults4;
@property (nonatomic) M13Checkbox *allDefaults5;
@property (nonatomic) M13Checkbox *allDefaults6;

@end

@implementation Question14ViewController

- (void)viewDidLoad {
    // Do any additional setup after loading the view.
    self.questionNumber = 14;
    //self.rightNavigationButtonTit=@"";
    self.segueToNextControllerName = @"segue1415";
    
    //M13Checkbox *allDefaults = [[M13Checkbox alloc]init];
    self.allDefaults = [[M13Checkbox alloc] initWithFrame:CGRectMake(500, 520, 100, 30) title:nil checkHeight:50.0];
    self.allDefaults.radius = 30;
   // allDefaults.frame = CGRectMake(514, 520, allDefaults.frame.size.width, allDefaults.frame.size.height);
    self.allDefaults.strokeColor = [UIColor darkerGreen];
    self.allDefaults.checkColor = [UIColor darkerGreen];
    self.allDefaults.tintColor = [UIColor lighterGreen];
    [self.allDefaults addTarget:self action:@selector(checkChangedValue:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.allDefaults];
    
    self.allDefaults2 = [[M13Checkbox alloc] initWithFrame:CGRectMake(657, 520, 100, 30) title:nil checkHeight:50.0];
    self.allDefaults2.radius = 30;
   // allDefaults2.frame = CGRectMake(657, 520, allDefaults2.frame.size.width, allDefaults2.frame.size.height);
    self.allDefaults2.strokeColor = [UIColor darkerGreen];
    self.allDefaults2.checkColor = [UIColor darkerGreen];
    self.allDefaults2.tintColor = [UIColor lighterGreen];
    [self.allDefaults2 addTarget:self action:@selector(checkChangedValue2:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.allDefaults2];
    
    self.allDefaults3 = [[M13Checkbox alloc] initWithFrame:CGRectMake(514, 670, 100, 30) title:nil checkHeight:50.0];
    self.allDefaults3.radius = 30;
    //allDefaults3.frame = CGRectMake(514, 670, allDefaults3.frame.size.width, allDefaults3.frame.size.height);
    self.allDefaults3.strokeColor = [UIColor darkerGreen];
    self.allDefaults3.checkColor = [UIColor darkerGreen];
    self.allDefaults3.tintColor = [UIColor lighterGreen];
    [self.allDefaults3 addTarget:self action:@selector(checkChangedValue3:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.allDefaults3];
    
    self.allDefaults4 = [[M13Checkbox alloc] initWithFrame:CGRectMake(657, 670, 100, 30) title:nil checkHeight:50.0];
    self.allDefaults4.radius = 30;
    //allDefaults4.frame = CGRectMake(657, 670, allDefaults4.frame.size.width, allDefaults4.frame.size.height);
    self.allDefaults4.strokeColor = [UIColor darkerGreen];
    self.allDefaults4.checkColor = [UIColor darkerGreen];
    self.allDefaults4.tintColor = [UIColor lighterGreen];
    [self.allDefaults4 addTarget:self action:@selector(checkChangedValue4:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.allDefaults4];
    
    self.allDefaults5 = [[M13Checkbox alloc] initWithFrame:CGRectMake(514, 775, 100, 30) title:nil checkHeight:50.0];
    self.allDefaults5.radius = 30;
    //allDefaults5.frame = CGRectMake(514, 775, allDefaults5.frame.size.width, allDefaults5.frame.size.height);
    self.allDefaults5.strokeColor = [UIColor darkerGreen];
    self.allDefaults5.checkColor = [UIColor darkerGreen];
    self.allDefaults5.tintColor = [UIColor lighterGreen];
    [self.allDefaults5 addTarget:self action:@selector(checkChangedValue5:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.allDefaults5];
    
    self.allDefaults6 = [[M13Checkbox alloc] initWithFrame:CGRectMake(657, 775, 100, 30) title:nil checkHeight:50.0];
    self.allDefaults6.radius = 30;
    //allDefaults6.frame = CGRectMake(657, 775, allDefaults6.frame.size.width, allDefaults6.frame.size.height);
    self.allDefaults6.strokeColor = [UIColor darkerGreen];
    self.allDefaults6.checkColor = [UIColor darkerGreen];
    self.allDefaults6.tintColor = [UIColor lighterGreen];
    [self.allDefaults6 addTarget:self action:@selector(checkChangedValue6:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.allDefaults6];
    
    [super viewDidLoad];
    self.rightNavButt.hidden = YES;
   // self.list.Q14Answer = [[NSMutableArray alloc]init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question15ViewController *vc = [segue destinationViewController];
    vc.list=self.list;
}

- (void)checkChangedValue:(id)sender
{
    self.list.Q14Answer1 = @"ja";
    [self.allDefaults2 setCheckState:M13CheckboxStateUnchecked];
    [self completed];
}

- (void)checkChangedValue2:(id)sender
{
    self.list.Q14Answer1 = @"nej";
    [self.allDefaults setCheckState:M13CheckboxStateUnchecked];
    [self completed];
}

- (void)checkChangedValue3:(id)sender
{
    self.list.Q14Answer2 = @"ja";
    [self.allDefaults4 setCheckState:M13CheckboxStateUnchecked];
    [self completed];
}

- (void)checkChangedValue4:(id)sender
{
    self.list.Q14Answer2 = @"nej";
    [self.allDefaults3 setCheckState:M13CheckboxStateUnchecked];
    [self completed];
}

- (void)checkChangedValue5:(id)sender
{
    self.list.Q14Answer3 = @"ja";
    [self.allDefaults6 setCheckState:M13CheckboxStateUnchecked];
    [self completed];
}

- (void)checkChangedValue6:(id)sender
{
    self.list.Q14Answer3 = @"nej";
    [self.allDefaults5 setCheckState:M13CheckboxStateUnchecked];
    [self completed];
}

- (void)completed{
    if (self.list.Q14Answer1 && self.list.Q14Answer2 && self.list.Q14Answer3){
        self.rightNavButt.hidden = NO;
    }
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
