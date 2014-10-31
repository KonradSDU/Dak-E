//
//  Question7ViewController.m
//  DAK-E
//
//  Created by Konrad Gnoinski on 27/10/14.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question7ViewController.h"
#import "UIColor+customColors.h"
#import "Question8ViewController.h"

@interface Question7ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *Q1Label;
@property (weak, nonatomic) IBOutlet UILabel *Q2Label;
@property (weak, nonatomic) IBOutlet UILabel *Q3Label;
@property (weak, nonatomic) IBOutlet UILabel *Q4Label;
@property (weak, nonatomic) IBOutlet UILabel *Q5Label;
@property (weak, nonatomic) IBOutlet UILabel *Q6Label;
@property (weak, nonatomic) IBOutlet UILabel *Q7Label;
@property (weak, nonatomic) IBOutlet UILabel *Q8Label;
@property (weak, nonatomic) IBOutlet UILabel *Q9Label;
@property (weak, nonatomic) IBOutlet UILabel *Q10Label;
@property (weak, nonatomic) IBOutlet UISlider *Q1Slider;
@property (weak, nonatomic) IBOutlet UISlider *Q2Slider;
@property (weak, nonatomic) IBOutlet UISlider *Q3Slider;
@property (weak, nonatomic) IBOutlet UISlider *Q4Slider;
@property (weak, nonatomic) IBOutlet UISlider *Q5Slider;
@property (weak, nonatomic) IBOutlet UISlider *Q6Slider;
@property (weak, nonatomic) IBOutlet UISlider *Q7Slider;
@property (weak, nonatomic) IBOutlet UISlider *Q8Slider;
@property (weak, nonatomic) IBOutlet UISlider *Q9Slider;
@property (weak, nonatomic) IBOutlet UISlider *Q10Slider;
@property (weak, nonatomic) IBOutlet UILabel *Q1secondLabel;
@property (weak, nonatomic) IBOutlet UILabel *Q2secondLabel;
@property (weak, nonatomic) IBOutlet UILabel *Q3secondLabel;
@property (weak, nonatomic) IBOutlet UILabel *Q4secondLabel;
@property (weak, nonatomic) IBOutlet UILabel *Q5secondLabel;
@property (weak, nonatomic) IBOutlet UILabel *Q6secondLabel;
@property (weak, nonatomic) IBOutlet UILabel *Q7secondLabel;
@property (weak, nonatomic) IBOutlet UILabel *Q8secondLabel;
@property (weak, nonatomic) IBOutlet UILabel *Q9secondLabel;
@property (weak, nonatomic) IBOutlet UILabel *Q10secondLabel;

@end

@implementation Question7ViewController

- (void)viewDidLoad {
    self.questionNumber=7;
    self.segueToNextControllerName=@"segueToQ8";
    _questionLabel.numberOfLines = 0;
    _questionLabel.text=@"Hvor mange genstande drikker du i gennemsnit \nom ugen på en almindelig uge?";
    _questionLabel.textColor = [UIColor darkerGreen];
    _questionLabel.font =[UIFont boldSystemFontOfSize:32.0f];
    _questionLabel.textAlignment = NSTextAlignmentCenter;
    
    //configure sliders
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

    _Q1Label.textColor =[UIColor darkerGreen];
    _Q1secondLabel.textColor =[UIColor darkerGreen];
    _Q2Label.textColor =[UIColor darkerGreen];
    _Q2secondLabel.textColor =[UIColor darkerGreen];
    _Q3Label.textColor =[UIColor darkerGreen];
    _Q3secondLabel.textColor =[UIColor darkerGreen];
    _Q4Label.textColor =[UIColor darkerGreen];
    _Q4secondLabel.textColor =[UIColor darkerGreen];
    _Q5Label.textColor =[UIColor darkerGreen];
    _Q5secondLabel.textColor =[UIColor darkerGreen];
    _Q6Label.textColor =[UIColor darkerGreen];
    _Q6secondLabel.textColor =[UIColor darkerGreen];
    _Q7Label.textColor =[UIColor darkerGreen];
    _Q7secondLabel.textColor =[UIColor darkerGreen];
    _Q8Label.textColor =[UIColor darkerGreen];
    _Q8secondLabel.textColor =[UIColor darkerGreen];
    _Q9Label.textColor =[UIColor darkerGreen];
    _Q9secondLabel.textColor =[UIColor darkerGreen];
    _Q10Label.textColor =[UIColor darkerGreen];
    _Q10secondLabel.textColor =[UIColor darkerGreen];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)sliderValueChanged:(id)sender
{
    if (sender == _Q1Slider) {
        _Q1secondLabel.text = [NSString stringWithFormat:@"%d", (int)_Q1Slider.value];
    }else if(sender == _Q2Slider){
        _Q2secondLabel.text = [NSString stringWithFormat:@"%d", (int)_Q2Slider.value];
    }else if(sender == _Q3Slider){
        _Q3secondLabel.text = [NSString stringWithFormat:@"%d", (int)_Q3Slider.value];
    }else if(sender == _Q4Slider){
        _Q4secondLabel.text = [NSString stringWithFormat:@"%d", (int)_Q4Slider.value];
    }else if(sender == _Q5Slider){
        _Q5secondLabel.text = [NSString stringWithFormat:@"%d", (int)_Q5Slider.value];
    }else if(sender == _Q6Slider){
        _Q6secondLabel.text = [NSString stringWithFormat:@"%d", (int)_Q6Slider.value];
    }else if(sender == _Q7Slider){
        _Q7secondLabel.text = [NSString stringWithFormat:@"%d", (int)_Q7Slider.value];
    }else if(sender == _Q8Slider){
        _Q8secondLabel.text = [NSString stringWithFormat:@"%d", (int)_Q8Slider.value];
    }else if(sender == _Q9Slider){
        _Q9secondLabel.text = [NSString stringWithFormat:@"%d", (int)_Q9Slider.value];
    }else{
        _Q10secondLabel.text = [NSString stringWithFormat:@"%d", (int)_Q10Slider.value];
    }
    
}

-(float)calculateAlcoholAmount{
    float alkohol;
    alkohol=alkohol+(_Q1Slider.value*1);
    alkohol=alkohol+(_Q2Slider.value*1.25);
    alkohol=alkohol+(_Q3Slider.value*1.25);
    alkohol=alkohol+(_Q4Slider.value*1.75);
    alkohol=alkohol+(_Q5Slider.value*1);
    alkohol=alkohol+(_Q6Slider.value*1);
    alkohol=alkohol+(_Q7Slider.value*1);
    alkohol=alkohol+(_Q8Slider.value*20);
    alkohol=alkohol+(_Q9Slider.value*10);
    alkohol=alkohol+(_Q10Slider.value*6);
    return alkohol;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question8ViewController *vc = [segue destinationViewController];
    self.list.Q7Answer=[NSString stringWithFormat:@"%d",(int)[self calculateAlcoholAmount]];
    vc.list=self.list;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
