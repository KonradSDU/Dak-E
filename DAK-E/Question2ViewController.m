//
//  Question2ViewController.m
//  DAK-E
//
//  Created by Konrad Gnoinski on 22/10/14.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question2ViewController.h"
#import "UIColor+customColors.h"
#import "Question3ViewController.h"

@interface Question2ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *questeionLabel1;
@property (weak, nonatomic) IBOutlet UILabel *titleLAbel;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel2;
@property (weak, nonatomic) IBOutlet UILabel *kgLabel;
@property (weak, nonatomic) IBOutlet UILabel *cmLabel;
@property (weak, nonatomic) IBOutlet UISlider *kgSlider;
@property (weak, nonatomic) IBOutlet UISlider *cmSlider;
@end

@implementation Question2ViewController

- (void)viewDidLoad {
    self.questionNumber = 2;
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [[UIColor darkerGreen] CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    UIImage *minImage = [image resizableImageWithCapInsets:UIEdgeInsetsMake(0, 5, 0, 0)];
    [[UISlider appearance] setMinimumTrackImage:minImage forState:UIControlStateNormal];
    [[UISlider appearance] setMaximumTrackImage:minImage forState:UIControlStateNormal];
    
    self.segueToNextControllerName = @"segueToQuestion3";
    _questeionLabel1.textColor = [UIColor darkerGreen];
    _questionLabel2.textColor = [UIColor darkerGreen];
    _kgLabel.textColor = [UIColor darkerGreen];
    _titleLAbel.textColor=[UIColor darkerGreen];
    _kgLabel.backgroundColor = [UIColor whiteColor];
    _cmLabel.textColor = [UIColor darkerGreen];
    _cmLabel.backgroundColor = [UIColor whiteColor];
    _kgSlider.thumbTintColor = [UIColor redColor];
    _kgLabel.text = [NSString stringWithFormat:@"%d kg", (int)_kgSlider.value];
    _cmLabel.text = [NSString stringWithFormat:@"%d cm", (int)_cmSlider.value];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)sliderValueChanged:(id)sender
{
    if (sender == _kgSlider) {
        _kgLabel.text = [NSString stringWithFormat:@"%d kg", (int)_kgSlider.value];
    }else{
        _cmLabel.text = [NSString stringWithFormat:@"%d cm", (int)_cmSlider.value];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question3ViewController *vc = [segue destinationViewController];
    self.list.Q2Height=[NSString stringWithFormat:@"%d",(int)_cmSlider.value];
    self.list.Q2Weight=[NSString stringWithFormat:@"%d",(int)_kgSlider.value];
    vc.list=self.list;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
