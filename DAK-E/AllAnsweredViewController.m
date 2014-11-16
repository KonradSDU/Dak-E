//
//  AllAnsweredViewController.m
//  DAK-E
//
//  Created by david on 09.11.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "AllAnsweredViewController.h"
#import "UIColor+customColors.h"

@interface AllAnsweredViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Q1Label;
@property (weak, nonatomic) IBOutlet UILabel *Q2HLabel;
@property (weak, nonatomic) IBOutlet UILabel *Q2WLabel;
@property (weak, nonatomic) IBOutlet UILabel *Q3Label;
@property (weak, nonatomic) IBOutlet UILabel *Q4Label;
@property (weak, nonatomic) IBOutlet UILabel *Q5Label;
@property (weak, nonatomic) IBOutlet UILabel *Q6Label;
@property (weak, nonatomic) IBOutlet UILabel *Q7Label;
@property (weak, nonatomic) IBOutlet UILabel *Q8Label;
@property (weak, nonatomic) IBOutlet UILabel *Q9Label;
@property (weak, nonatomic) IBOutlet UILabel *Q10Label;
@property (weak, nonatomic) IBOutlet UILabel *Q11Label;
@property (weak, nonatomic) IBOutlet UILabel *Q12Label;
@property (weak, nonatomic) IBOutlet UILabel *Q13Label;
@property (weak, nonatomic) IBOutlet UILabel *Q14Label;
@property (weak, nonatomic) IBOutlet UILabel *Q15Label;
@property (weak, nonatomic) IBOutlet UILabel *Q16Label;
@property (weak, nonatomic) IBOutlet UILabel *Q17Label;
@property (weak, nonatomic) IBOutlet UILabel *Q18Label;



@end

@implementation AllAnsweredViewController

- (void)viewDidLoad {
    
  //NSLog(@"%@", self.list.Q3Answer);
    
    _Q1Label.textColor = [UIColor darkerGreen];
    self.Q1Label.text = [NSString stringWithFormat:@"%@", self.list.Q1Answer];
    _Q2HLabel.textColor = [UIColor darkerGreen];
    self.Q2HLabel.text = [NSString stringWithFormat:@"%@", self.list.Q2Height];
    _Q2WLabel.textColor = [UIColor darkerGreen];
    self.Q2WLabel.text = [NSString stringWithFormat:@"%@", self.list.Q2Weight];
    _Q3Label.textColor = [UIColor darkerGreen];
    self.Q3Label.text = [NSString stringWithFormat:@"%@", self.list.Q3Answer];
    _Q4Label.textColor = [UIColor darkerGreen];
    self.Q4Label.text = [NSString stringWithFormat:@"%@", self.list.Q4Answer];
    _Q5Label.textColor = [UIColor darkerGreen];
    self.Q5Label.text = [NSString stringWithFormat:@"%@", self.list.Q5Answer];
    _Q6Label.textColor = [UIColor darkerGreen];
    self.Q6Label.text = [NSString stringWithFormat:@"%@", self.list.Q6Answer];
    _Q7Label.textColor = [UIColor darkerGreen];
    self.Q7Label.text = [NSString stringWithFormat:@"%@", self.list.Q7Answer];
    _Q8Label.textColor = [UIColor darkerGreen];
    self.Q8Label.text = [NSString stringWithFormat:@"%@", self.list.Q8Answer];
    _Q9Label.textColor = [UIColor darkerGreen];
    self.Q9Label.text = [NSString stringWithFormat:@"%@", self.list.Q9Answer];
    _Q10Label.textColor = [UIColor darkerGreen];
    self.Q10Label.text = [NSString stringWithFormat:@"%@", self.list.Q10Answer];
    _Q11Label.textColor = [UIColor darkerGreen];
    self.Q11Label.text = [NSString stringWithFormat:@"%@", self.list.Q11Answer];
    _Q12Label.textColor = [UIColor darkerGreen];
    self.Q12Label.text = [NSString stringWithFormat:@"%@", self.list.Q12Answer];
    _Q13Label.textColor = [UIColor darkerGreen];
    self.Q13Label.text = [NSString stringWithFormat:@"%@", self.list.Q13Answer];
    _Q14Label.textColor = [UIColor darkerGreen];
    self.Q14Label.text = [NSString stringWithFormat:@"%@", self.list.Q14Answer1];
    _Q15Label.textColor = [UIColor darkerGreen];
    self.Q15Label.text = [NSString stringWithFormat:@"%@", self.list.Q15Answer];
    _Q16Label.textColor = [UIColor darkerGreen];
    self.Q16Label.text = [NSString stringWithFormat:@"%@", self.list.Q16Answer];
    _Q17Label.textColor = [UIColor darkerGreen];
    self.Q17Label.text = [NSString stringWithFormat:@"%@", self.list.Q17Answer];
    _Q18Label.textColor = [UIColor darkerGreen];
    self.Q18Label.text = [NSString stringWithFormat:@"%@", self.list.Q18Answer];
    
    self.segueToNextControllerName = @"LastSegue";
    
    
    
    [super viewDidLoad];
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(768,2048)];
    // Do any additional setup after loading the view.
}

-(IBAction)showAnswer:(id)sender{
   // NSString *answer=self.list.Q16Answer;
    //self.Q16Label.text=self.list.Q16Answer;
}


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
