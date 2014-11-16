//
//  Question3ViewController.m
//  DAK-E
//
//  Created by david on 22.10.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question3ViewController.h"
#import "BaseViewController.h"
#import "Question4ViewController.h"

@interface Question3ViewController ()


@end

@implementation Question3ViewController

- (void)viewDidLoad {
    self.questionNumber=3;
    self.segueToNextControllerName = @"segueToQuestion4";
 //   NSLog(@"%@",self.list.Q2Height);
    
    [super viewDidLoad];
    self.rightNavButt.hidden = YES;
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1:(id)sender {
    self.list.Q3Answer=@"Ryger til dagligt";
    [self addLayerToTheButton:sender];

}

- (IBAction)button2:(id)sender {
    self.list.Q3Answer=@"Lejlighedsvis ryger";
    [self addLayerToTheButton:sender];

}

- (IBAction)button3:(id)sender {
    self.list.Q3Answer=@"Er stoppet for mindre end 6 måneder siden";
    [self addLayerToTheButton:sender];

}

- (IBAction)button4:(id)sender {
    self.list.Q3Answer=@"Er stoppet for mere end 6 måneder siden";
    [self addLayerToTheButton:sender];

}

- (IBAction)button5:(id)sender {
    self.list.Q3Answer=@"Har aldrig røget (hvis du aldrig har røget, gå da til spørgsmål 7)";
    [self addLayerToTheButton:sender];

}


-(void)addLayerToTheButton:(UIButton *) button{
    [[button layer] setBorderWidth:2.0f];
    [[button layer] setBorderColor:[UIColor whiteColor].CGColor];
}
-(void)viewDidAppear:(BOOL)animated{
    if(self.list.Q3Answer!=nil){
        self.rightNavButt.hidden = NO;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
   
    Question4ViewController *vc = [segue destinationViewController];

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
