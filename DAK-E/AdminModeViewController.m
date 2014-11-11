//
//  AdminModeViewController.m
//  DAK-E
//
//  Created by Milena Gnoińska on 04.11.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "AdminModeViewController.h"

@interface AdminModeViewController ()

@property (weak, nonatomic) IBOutlet UIButton *selectButton;
@property (weak, nonatomic) IBOutlet UIButton *changeButton;

@end

@implementation AdminModeViewController

- (void)viewDidLoad {
    
    // Do any additional setup after loading the view.
    self.adminMode = YES;
    [super viewDidLoad];
    self.rightNavButt.hidden = YES;
    self.selectButton.titleLabel.font = [UIFont systemFontOfSize:24.0];
    self.changeButton.titleLabel.font = [UIFont systemFontOfSize:24.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)selectQuestionnaire:(id)sender {
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
