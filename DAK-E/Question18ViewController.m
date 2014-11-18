//
//  EighteenthViewController.m
//  DAK-E
//
//  Created by Milena Gnoińska on 23.10.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question18ViewController.h"
#import "AllAnsweredViewController.h"

@interface Question18ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;

@end

@implementation Question18ViewController

- (void)viewDidLoad {
    // Do any additional setup after loading the view.
    self.questionNumber = 18;

    self.segueToNextControllerName=@"SegueToAllAnswers";

    self.button1.titleLabel.font =  [UIFont systemFontOfSize:24.0];
    self.button2.titleLabel.font =  [UIFont systemFontOfSize:24.0];
    [super viewDidLoad];
    self.rightNavButt.hidden = YES;
}
- (IBAction)button1:(id)sender {
    self.list.Q18Answer = @"Ja, I må gerne kontakte mig i forbindelse med forskning";
    [self addLayerToTheButton:sender];
}
- (IBAction)button2:(id)sender {
    self.list.Q18Answer = @"Nej tak, jeg vil IKKE kontaktes yderligere i forbindelse med forskning";
    [self addLayerToTheButton:sender];
}

-(void)addLayerToTheButton:(UIButton *) button{
    [[button layer] setBorderWidth:2.0f];
    [[button layer] setBorderColor:[UIColor whiteColor].CGColor];
}

-(void)viewDidAppear:(BOOL)animated{
    if(self.list.Q18Answer!=nil){
        self.rightNavButt.hidden = NO;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    AllAnsweredViewController *vc =[segue destinationViewController];
    vc.list=self.list;
    
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
