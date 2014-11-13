//
//  FirstQuestionViewController.m
//  DAK-E
//
//  Created by Milena Gnoińska on 22.10.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "Question1ViewController.h"
#import "Question2ViewController.h"

@interface Question1ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button5;
@property (nonatomic) Boolean isHighlighted;

@end

@implementation Question1ViewController

- (void)viewDidLoad {
    self.isHighlighted=false;
    self.questionNumber = 1;
    self.segueToNextControllerName = @"segueToQ2";
    
    [super viewDidLoad];
//    self.button1= [UIButton buttonWithType:UIButtonTypeCustom];
//    self.button1.frame=CGRectMake(0, 0,self.view.bounds.size.width, 40);
//    [self.button1 setTitleEdgeInsets:UIEdgeInsetsMake(2, 50, 2, 20)];
//    [self.button1 setImageEdgeInsets:UIEdgeInsetsMake(2,-200 , 2, 2)];
//    [self.view addSubview:self.button1];
  //  [self.button1 setBackgroundImage:[self setBackgroundImageByColor:[UIColor blackColor] withFrame:self.button1.frame cornerRadius:0] forState:UIControlStateHighlighted];
   // [self.button1 setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    //		[self.button1 setBackgroundImage:(UIImage *) forState:(UIControlState)
    //self.button1.selected=!self.button1.selected;
    self.rightNavButt.hidden = YES;
    self.button1.titleLabel.font =  [UIFont systemFontOfSize:24.0];
    self.button2.titleLabel.font =  [UIFont systemFontOfSize:24.0];
    self.button3.titleLabel.font =  [UIFont systemFontOfSize:24.0];
    self.button4.titleLabel.font =  [UIFont systemFontOfSize:24.0];
    self.button5.titleLabel.font =  [UIFont systemFontOfSize:24.0];
    // Do any additional setup after loading the view.
}

//-(UIImage *)setBackgroundImageByColor:(UIColor *)backgroundColor withFrame:(CGRect )rect cornerRadius:(float)radius{
//    UIView *tcv = [[UIView alloc]initWithFrame:rect];
//    [tcv setBackgroundColor:backgroundColor];
//    
//    CGSize gcSize= tcv.frame.size;
//    UIGraphicsBeginImageContext(gcSize);
//    [tcv.layer renderInContext:UIGraphicsGetCurrentContext()];
//    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    
//    UIGraphicsBeginImageContextWithOptions(image.size, NO, image.scale);
//    const CGRect RECT=CGRectMake(0,0, image.size.width, image.size.height);
//    [[UIBezierPath bezierPathWithRoundedRect:RECT cornerRadius:radius]addClip];
//    [image drawInRect:RECT];
//    UIImage *imageNew = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    return imageNew;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1:(id)sender {
    self.list.Q1Answer = @"Fremragende";
    //if (self.list.Q1Answer==nil){
    if(!self.isHighlighted)
        [self performSelector:@selector(highlightedButton:) withObject:sender afterDelay:0.0];
    else
        [self performSelector:@selector(unhighlightedButton:) withObject:sender afterDelay:0.0];
       // [self.button1 setHighlighted:YES];
    //}
    //else{
      //  [self performSelector:@selector(unhighlightedButton:) withObject:sender afterDelay:0.0];
    //}
}
- (IBAction)button2:(id)sender {
    self.list.Q1Answer = @"Vældigt godt";
    //if (self.list.Q1Answer==nil){
        //[self performSelector:@selector(highlightedButton:) withObject:sender afterDelay:0.0];
       // [self.button2 setHighlighted:YES];
    //}
   // else{
      //  [self performSelector:@selector(unhighlightedButton:) withObject:sender afterDelay:0.0];
   // }
    
    if(!self.isHighlighted)
        [self performSelector:@selector(highlightedButton:) withObject:sender afterDelay:0.0];
    else
        [self performSelector:@selector(unhighlightedButton:) withObject:sender afterDelay:0.0];
    
}
- (IBAction)button3:(id)sender {
    self.list.Q1Answer = @"Godt";
}
- (IBAction)button4:(id)sender {
    self.list.Q1Answer = @"Mindre godt";
}
- (IBAction)button5:(id)sender {
    self.list.Q1Answer = @"Dårligt";
}

-(void)highlightedButton:(UIButton *)button {
    [button setHighlighted:YES];
    self.isHighlighted=true;
    
}
-(void)unhighlightedButton:(UIButton *)button {
    [button setHighlighted:NO];
    self.isHighlighted=false;
}

-(void)viewDidAppear:(BOOL)animated{
    if(self.list.Q1Answer!=nil){
        self.rightNavButt.hidden = NO;
       
    }
   //_button1=[Uibutton buttonWithType:(UIButtonType)]
    //[self.button1 setBackgroundImage:[self setBackgroundImageByColor:[UIColor blackColor] withFrame:self.button1.frame cornerRadius:0] forState:UIControlStateHighlighted];
  //  [self.button1 setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Question2ViewController *vc = [segue destinationViewController];
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
