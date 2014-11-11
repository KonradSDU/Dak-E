//
//  LastViewController.m
//  DAK-E
//
//  Created by david on 05.11.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "LastViewController.h"
#import "UIColor+customColors.h"

@interface LastViewController ()

@end

@implementation LastViewController

- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor lighterGreen];
    if (self.restartNavigationButt == nil)
    {
        _restartNavigationButt = @"Start Again";
    }
    
    [self performSelector:@selector(changeViewAutomaticaly) withObject:(nil) afterDelay:(5)];
    // Do any additional setup after loading the view.
//    UIButton *restartNavButt=[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [restartNavButt addTarget:self
//                       action:@selector(restartNavButtHasBeenPressed) forControlEvents:(UIControlEventTouchUpInside)];
//    [restartNavButt setTitle:_restartNavigationButt forState:UIControlStateNormal];
//    restartNavButt.frame = CGRectMake(530,10,250,50);
//    restartNavButt.tintColor = [UIColor darkerGreen];
//    [restartNavButt setFont:[UIFont systemFontOfSize:36]];
//    [self.view addSubview:restartNavButt];
    
    [super viewDidLoad];
    
    
}
-(void) changeViewAutomaticaly
{
    [self.navigationController popToRootViewControllerAnimated:(YES)];

}


//-(void) restartNavButtHasBeenPressed
//{
//    [self.navigationController popToRootViewControllerAnimated:(YES)];
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
