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

@end

@implementation Question14ViewController

- (void)viewDidLoad {
    // Do any additional setup after loading the view.
    self.questionNumber = 14;
    //self.rightNavigationButtonTit=@"";
    self.segueToNextControllerName = @"segue1415";
    
    //M13Checkbox *allDefaults = [[M13Checkbox alloc]init];
    M13Checkbox *allDefaults = [[M13Checkbox alloc] initWithFrame:CGRectMake(500, 520, 100, 30) title:nil checkHeight:50.0];
    allDefaults.radius = 30;
   // allDefaults.frame = CGRectMake(514, 520, allDefaults.frame.size.width, allDefaults.frame.size.height);
    allDefaults.strokeColor = [UIColor darkerGreen];
    allDefaults.checkColor = [UIColor darkerGreen];
    allDefaults.tintColor = [UIColor lighterGreen];
    [allDefaults addTarget:self action:@selector(checkChangedValue:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:allDefaults];
    
    M13Checkbox *allDefaults2 = [[M13Checkbox alloc] initWithFrame:CGRectMake(657, 520, 100, 30) title:nil checkHeight:50.0];
    allDefaults2.radius = 30;
   // allDefaults2.frame = CGRectMake(657, 520, allDefaults2.frame.size.width, allDefaults2.frame.size.height);
    allDefaults2.strokeColor = [UIColor darkerGreen];
    allDefaults2.checkColor = [UIColor darkerGreen];
    allDefaults2.tintColor = [UIColor lighterGreen];
    [allDefaults2 addTarget:self action:@selector(checkChangedValue2:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:allDefaults2];
    
    M13Checkbox *allDefaults3 = [[M13Checkbox alloc] initWithFrame:CGRectMake(514, 670, 100, 30) title:nil checkHeight:50.0];
    allDefaults3.radius = 30;
    //allDefaults3.frame = CGRectMake(514, 670, allDefaults3.frame.size.width, allDefaults3.frame.size.height);
    allDefaults3.strokeColor = [UIColor darkerGreen];
    allDefaults3.checkColor = [UIColor darkerGreen];
    allDefaults3.tintColor = [UIColor lighterGreen];
    [allDefaults3 addTarget:self action:@selector(checkChangedValue3:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:allDefaults3];
    
    M13Checkbox *allDefaults4 = [[M13Checkbox alloc] initWithFrame:CGRectMake(657, 670, 100, 30) title:nil checkHeight:50.0];
    allDefaults4.radius = 30;
    //allDefaults4.frame = CGRectMake(657, 670, allDefaults4.frame.size.width, allDefaults4.frame.size.height);
    allDefaults4.strokeColor = [UIColor darkerGreen];
    allDefaults4.checkColor = [UIColor darkerGreen];
    allDefaults4.tintColor = [UIColor lighterGreen];
    [allDefaults4 addTarget:self action:@selector(checkChangedValue4:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:allDefaults4];
    
    M13Checkbox *allDefaults5 = [[M13Checkbox alloc] initWithFrame:CGRectMake(514, 775, 100, 30) title:nil checkHeight:50.0];
    allDefaults5.radius = 30;
    //allDefaults5.frame = CGRectMake(514, 775, allDefaults5.frame.size.width, allDefaults5.frame.size.height);
    allDefaults5.strokeColor = [UIColor darkerGreen];
    allDefaults5.checkColor = [UIColor darkerGreen];
    allDefaults5.tintColor = [UIColor lighterGreen];
    [allDefaults5 addTarget:self action:@selector(checkChangedValue5:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:allDefaults5];
    
    M13Checkbox *allDefaults6 = [[M13Checkbox alloc] initWithFrame:CGRectMake(657, 775, 100, 30) title:nil checkHeight:50.0];
    allDefaults6.radius = 30;
    //allDefaults6.frame = CGRectMake(657, 775, allDefaults6.frame.size.width, allDefaults6.frame.size.height);
    allDefaults6.strokeColor = [UIColor darkerGreen];
    allDefaults6.checkColor = [UIColor darkerGreen];
    allDefaults6.tintColor = [UIColor lighterGreen];
    [allDefaults6 addTarget:self action:@selector(checkChangedValue6:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:allDefaults6];
    
    [super viewDidLoad];
    
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
    [self.list.Q14Answer insertObject:@"ja" atIndex:0];
}

- (void)checkChangedValue2:(id)sender
{
    [self.list.Q14Answer insertObject:@"nej" atIndex:0];
}

- (void)checkChangedValue3:(id)sender
{
    [self.list.Q14Answer insertObject:@"ja" atIndex:1];
}

- (void)checkChangedValue4:(id)sender
{
    [self.list.Q14Answer insertObject:@"nej" atIndex:1];
}

- (void)checkChangedValue5:(id)sender
{
    [self.list.Q14Answer insertObject:@"ja" atIndex:2];
}

- (void)checkChangedValue6:(id)sender
{
    [self.list.Q14Answer insertObject:@"nej" atIndex:2];
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
