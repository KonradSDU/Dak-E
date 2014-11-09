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
@property (weak, nonatomic) IBOutlet UILabel *Q16Label;

@end

@implementation AllAnsweredViewController

- (void)viewDidLoad {
    
  
    NSLog(@"%@", self.list.Q3Answer);
    
    _Q16Label.textColor = [UIColor darkerGreen];
    //self.Q16Label.text = [NSString stringWithFormat:@"%@", self.list.Q3Answer];
    
    [super viewDidLoad];
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
