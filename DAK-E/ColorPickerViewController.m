//
//  ColorPickerViewController.m
//  DAK-E
//
//  Created by Milena Gnoińska on 11.11.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "ColorPickerViewController.h"
#import <HRColorPickerView.h>

@interface ColorPickerViewController ()

@end

@implementation ColorPickerViewController

- (void)viewDidLoad {
    self.adminMode = YES;
    [super viewDidLoad];
    self.rightNavButt.hidden = YES;
    HRColorPickerView *colorPickerView = [[HRColorPickerView alloc] init];
    colorPickerView.color = self.color;
    [colorPickerView addTarget:self
                        action:@selector(selected:)
              forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:colorPickerView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)selected:(id) sender{
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
