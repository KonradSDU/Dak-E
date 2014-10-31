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

@property (weak,nonatomic) NSMutableString *answers;

@end

@implementation Question3ViewController

- (void)viewDidLoad {
    self.questionNumber=3;
    self.segueToNextControllerName = @"segueToQuestion4";
    NSLog(@"%@",self.list.Q2Height);
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
}

- (IBAction)button2:(id)sender {
    self.list.Q3Answer=@"Lejlighedsvis ryger";
}

- (IBAction)button3:(id)sender {
    self.list.Q3Answer=@"Er stoppet for mindre end 6 måneder siden";
}

- (IBAction)button4:(id)sender {
    self.list.Q3Answer=@"Er stoppet for mere end 6 måneder siden";
}

- (IBAction)button5:(id)sender {
    self.list.Q3Answer=@"Har aldrig røget (hvis du aldrig har røget, gå da til spørgsmål 7)";
}

-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"%@",self.list.Q3Answer);
    if(self.list.Q3Answer!=nil){
        self.rightNavButt.hidden = NO;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
   // NSLog(@"@")
    Question4ViewController *vc = [segue destinationViewController];
  //  self.list.Q3Answer = [NSString stringWithFormat: @"%@", self.];
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
