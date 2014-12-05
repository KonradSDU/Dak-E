//
//  BaseViewController.m
//  DAK-E
//
//  Created by Konrad Gnoinski on 21/10/14.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "BaseViewController.h"
#import "UIColor+customColors.h"
#import "DatabaseManager.h"
#import "Questionaire.h"
#import "Question.h"
#import "SubQuestion.h"
#import "BigUISlider.h"
#import "M13Checkbox.h"
#import "AnswerSheet.h"
#import "Answer.h"
#import "AllAnsweredViewController.h"

static int const overHead = 150;
static int const screenHeight = 1024;

@interface BaseViewController ()
@property (nonatomic, retain) Question *question;
@property (nonatomic, retain) NSArray *subQuestions;
@property (readwrite) NSMutableArray* buttons;
@property (readwrite) NSMutableArray* tmpViews;
@property (readwrite) NSMutableArray* labelsForSliders;
@property int screenSize;
@end

@implementation BaseViewController

- (void)viewDidLoad {
     _questionNumber=0;
    [[self navigationController] setNavigationBarHidden:YES animated:NO];
    self.view.backgroundColor = [UIColor lighterGreen];
    if(self.leftNavigationButtonTit == nil){
        _leftNavigationButtonTit= @"< Forrige";
    }
    if(self.rightNavigationButtonTit == nil){
        _rightNavigationButtonTit = @"Næste >";
    }
    
    UIView *topBar = [[UIView alloc] init];
    [topBar setTranslatesAutoresizingMaskIntoConstraints:NO];
    topBar.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:topBar];
    
    UILabel *lab =[[UILabel alloc] initWithFrame:CGRectMake(0,10,768,51)];
    [lab setTextAlignment:UITextAlignmentCenter];
    [lab setTextColor:[UIColor darkerGreen]];
    [lab setFont:[UIFont systemFontOfSize:40]];
    lab.text=@"Name Surname";
    [topBar addSubview:lab];
    
    UIButton *leftNavButt =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [leftNavButt addTarget:self
                    action:@selector(leftNavButtHasBeenPressed)
          forControlEvents:UIControlEventTouchUpInside];
    [leftNavButt setTitle:_leftNavigationButtonTit forState:UIControlStateNormal];
    leftNavButt.frame = CGRectMake(3, 10, 150, 50);
    leftNavButt.tintColor = [UIColor darkerGreen];
    [leftNavButt setFont:[UIFont systemFontOfSize:36]];
    [topBar addSubview:leftNavButt];
    
    _rightNavButt=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_rightNavButt addTarget:self
                     action:@selector(rightNavButtHasBeenPressed)
           forControlEvents:UIControlEventTouchUpInside];
    [_rightNavButt setTitle:_rightNavigationButtonTit forState:UIControlStateNormal];
    _rightNavButt.frame = CGRectMake(620, 10, 150, 50);
    _rightNavButt.tintColor = [UIColor darkerGreen];
    [_rightNavButt setFont:[UIFont systemFontOfSize:36]];
    [topBar addSubview:_rightNavButt];
    
    // Width constraint
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:topBar
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:1
                                                           constant:0]];
    
    // Height constraint
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:topBar
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeHeight
                                                         multiplier:0.07
                                                           constant:0]];
    
    // Center horizontally
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:topBar
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    _buttons = [[NSMutableArray alloc] init];
    _tmpViews = [[NSMutableArray alloc] init];
    _labelsForSliders = [[NSMutableArray alloc]init];
    [self nextQuestion];
    [super viewDidLoad];
}

-(BOOL)prefersStatusBarHidden { return YES; }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)leftNavButtHasBeenPressed{
    if (_questionNumber>1&&_questionNumber<17) {
        _questionNumber-=2;
        [self nextQuestion];
    }else if(_questionNumber<=1){
        [self dismissViewControllerAnimated:true completion:nil];
    }else{
        AllAnsweredViewController *all = [[AllAnsweredViewController alloc]init];
        [self presentViewController:all animated:true completion:nil];
    }
}

- (void)rightNavButtHasBeenPressed{
    [self nextQuestion];
}

- (void)createMainQuestionLabel{
    int lengthMultiplayer;
    NSLog(@"%d",_subQuestions.count);
    lengthMultiplayer= (_question.question.length / 50)+1; //max number of chars in line
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(34, overHead, 700, 45*lengthMultiplayer)];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor darkerGreen];
    label.numberOfLines = 0;
    label.font=[UIFont boldSystemFontOfSize:32];
    label.lineBreakMode = UILineBreakModeWordWrap;
    label.text = _question.question;
    [self.view addSubview:label];
    _screenSize=overHead+45*lengthMultiplayer;
    [_tmpViews addObject:label];
}

- (void)createButtons{
    _screenSize+=20;
    int tmp=((screenHeight-_screenSize)/2)+_screenSize;
    
    int buttonsSize = 0;
    for (int i = 0; i < _subQuestions.count; i++){
        SubQuestion *sub=[_subQuestions objectAtIndex:i];
        if(sub.answer.length<70){
            buttonsSize+=75;
        }else{
            buttonsSize+=115;
        }
    }
    
    int start=tmp-(buttonsSize/2);
    int buttonSize;
    
    for (int i = 0; i < _subQuestions.count; i++) {
        SubQuestion *sub=[_subQuestions objectAtIndex:i];
        if(sub.answer.length<70){
            buttonSize=50;
        }else{
            buttonSize=90;
        }
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(34, start, 700, buttonSize)];
        [button setTitle:sub.answer forState:UIControlStateNormal];
        button.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
        button.titleLabel.textAlignment = NSTextAlignmentCenter;
        [button setBackgroundColor:[UIColor darkerGreen]];
        button.titleLabel.font = [UIFont systemFontOfSize:24.0];
        [button addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
        [_buttons addObject:button];
        start += button.frame.size.height+25;
    }
}


-(void)stayPressed:(UIButton *) sender {
    NSLog(@"naciks %@",sender.currentTitle);
    [self nextQuestion];
}

- (void)createCheckboxes{
    _screenSize+=50;
    
    int tmp=((screenHeight-_screenSize)/2)+_screenSize;
    
    int buttonsSize = 100;
    for (int i = 0; i < _subQuestions.count; i++){
        SubQuestion *sub=[_subQuestions objectAtIndex:i];
        if(sub.answer.length<50){
            buttonsSize+=75;
        }else{
            buttonsSize+=115;
        }
    }
    
    int start=tmp-(buttonsSize/2);
    int buttonSize;
    
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(550, start-100, 45, 45)];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor darkerGreen];
    label.numberOfLines = 0;
    label.font=[UIFont boldSystemFontOfSize:32];
    label.lineBreakMode = UILineBreakModeWordWrap;
    label.text = @"ja";
    [self.view addSubview:label];
    [_tmpViews addObject:label];
    
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(670, start-100, 45, 45)];
    label2.textAlignment = NSTextAlignmentCenter;
    label2.textColor = [UIColor darkerGreen];
    label2.numberOfLines = 0;
    label2.font=[UIFont boldSystemFontOfSize:32];
    label2.lineBreakMode = UILineBreakModeWordWrap;
    label2.text = @"nej";
    [self.view addSubview:label2];
    [_tmpViews addObject:label2];
    
    for (int i = 0; i < _subQuestions.count; i++) {
        SubQuestion *sub=[_subQuestions objectAtIndex:i];
        if(sub.answer.length<40){
            buttonSize=50;
        }else{
            buttonSize=90;
        }
        UILabel *button = [[UILabel alloc] initWithFrame:CGRectMake(34, start, 450, buttonSize)];
        button.numberOfLines = 0;
        button.text=sub.answer;
        button.lineBreakMode = NSLineBreakByWordWrapping;
        button.textAlignment = NSTextAlignmentCenter;
        button.font = [UIFont systemFontOfSize:24.0];
        button.textColor=[UIColor darkerGreen];
        [self.view addSubview:button];
        [_tmpViews addObject:button];
        
        M13Checkbox *allDefaults = [[M13Checkbox alloc] initWithFrame:CGRectMake(550, start+(buttonSize/2)-10, 100, 30) title:nil checkHeight:50.0];
        allDefaults.radius = 30;
        allDefaults.strokeColor = [UIColor darkerGreen];
        allDefaults.checkColor = [UIColor darkerGreen];
        allDefaults.tintColor = [UIColor lighterGreen];
        [allDefaults addTarget:self action:@selector(checkChangedValue:) forControlEvents:UIControlEventValueChanged];
        [self.view addSubview:allDefaults];
        [_buttons addObject:allDefaults];
        
        M13Checkbox *allDefaults2 = [[M13Checkbox alloc] initWithFrame:CGRectMake(670, start+(buttonSize/2)-10, 100, 30) title:nil checkHeight:50.0];
        allDefaults2.radius = 30;
        allDefaults2.strokeColor = [UIColor darkerGreen];
        allDefaults2.checkColor = [UIColor darkerGreen];
        allDefaults2.tintColor = [UIColor lighterGreen];
        [allDefaults2 addTarget:self action:@selector(checkChangedValue:) forControlEvents:UIControlEventValueChanged];
        [self.view addSubview:allDefaults2];
        [_buttons addObject:allDefaults2];
        
        start += button.frame.size.height+25;
    }
}

- (void)checkChangedValue:(id)sender
{
    int index = [_buttons indexOfObject:sender];
    NSLog(@"%d",index);
    if (index % 2 ==0) {
        M13Checkbox *check = [_buttons objectAtIndex:index+1];
        [check setCheckState:M13CheckboxStateUnchecked];
    }else{
        M13Checkbox *check = [_buttons objectAtIndex:index-1];
        [check setCheckState:M13CheckboxStateUnchecked];
    }
    [self isFilled];
}

- (void)isFilled{
    int checks=0;
    for (int i=0; i<_buttons.count; i++) {
        M13Checkbox *check = [_buttons objectAtIndex:i];
        if (check.checkState == M13CheckboxStateChecked) {
            checks++;
        }
    }
    if (_buttons.count/2==checks) {
        self.rightNavButt.hidden = NO;
    }
}


- (void)createSliders{
    _screenSize+=20;
    int tmp=((screenHeight-_screenSize)/2)+_screenSize;
    
    int buttonsSize = 0;
    for (int i = 0; i < _subQuestions.count; i++){
        SubQuestion *sub=[_subQuestions objectAtIndex:i];
        if(sub.answer.length<70){
            buttonsSize+=75;
        }else{
            buttonsSize+=115;
        }
    }
    
    int start=tmp-(buttonsSize/2);
    int buttonSize;
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

    
    for (int i = 0; i < _subQuestions.count; i++) {
        SubQuestion *sub=[_subQuestions objectAtIndex:i];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(34, start-80, 500, 45)];
        label.textAlignment = NSTextAlignmentCenter;
        label.textColor = [UIColor darkerGreen];
        label.numberOfLines = 0;
        label.font=[UIFont boldSystemFontOfSize:32];
        label.lineBreakMode = UILineBreakModeWordWrap;
        label.text = sub.answer;
        [self.view addSubview:label];
        [_tmpViews addObject:label];
        
        UIView *valueView = [[UIView alloc] initWithFrame:CGRectMake(620, start-10, 120, 60)];
        valueView.backgroundColor=[UIColor whiteColor];
        [self.view addSubview:valueView];
        [_tmpViews addObject:valueView];
        
        UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(620, start-10, 120, 60)];
        label2.textAlignment = NSTextAlignmentCenter;
        label2.textColor = [UIColor darkerGreen];
        label2.numberOfLines = 0;
        label2.font=[UIFont boldSystemFontOfSize:32];
        label2.lineBreakMode = UILineBreakModeWordWrap;
        label2.text = @"---";
        [self.view addSubview:label2];
        [_labelsForSliders addObject:label2];
        
        if(sub.answer.length<60){
            buttonSize=50;
        }else{
            buttonSize=90;
        }
        BigUISlider *button = [[BigUISlider alloc] initWithFrame:CGRectMake(34, start, 700, buttonSize)];
        button.maximumValue = 200;
        button.minimumValue = 40;
        button.value=120;
        [button addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
        [_buttons addObject:button];
        start += button.frame.size.height+150;
    }
}

-(void)sliderValueChanged:(BigUISlider *)sender
{
    if (sender == [_buttons objectAtIndex:0]) {
        UILabel *lab=[_labelsForSliders objectAtIndex:0];
        lab.text= [NSString stringWithFormat:@"%d kg", (int)sender.value];
    }else{
        UILabel *lab=[_labelsForSliders objectAtIndex:1];
        lab.text = [NSString stringWithFormat:@"%d cm", (int)sender.value];
    }
    
    bool change=true;
    for (UILabel *lab in _labelsForSliders){
        if ([lab.text isEqual:@"---"]) {
            change=false;
        }
    }
    if (change==true) {
        self.rightNavButt.hidden = NO;
    }
}

- (void)createUserInput{
    _screenSize+=20;
    int tmp=((screenHeight-_screenSize-300)/2)+_screenSize;
    
    int buttonsSize = 0;
    for (int i = 0; i < _subQuestions.count; i++){
        SubQuestion *sub=[_subQuestions objectAtIndex:i];
        if(sub.answer.length<70){
            buttonsSize+=75;
        }else{
            buttonsSize+=115;
        }
    }
    
    int start=tmp-(buttonsSize/2);
    int buttonSize;
    self.rightNavButt.hidden = NO;
    for (int i = 0; i < _subQuestions.count; i++) {
        SubQuestion *sub=[_subQuestions objectAtIndex:i];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(34, start-80, 500, 45)];
        label.textAlignment = NSTextAlignmentLeft;
        label.textColor = [UIColor darkerGreen];
        label.numberOfLines = 0;
        label.font=[UIFont boldSystemFontOfSize:32];
        label.lineBreakMode = UILineBreakModeWordWrap;
        label.text = sub.answer;
        [self.view addSubview:label];
        [_tmpViews addObject:label];
        
        UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(34, start, 700, 45)];
        tf.textColor = [UIColor colorWithRed:0/256.0 green:84/256.0 blue:129/256.0 alpha:1.0];
        tf.font = [UIFont fontWithName:@"Helvetica-Bold" size:25];
        tf.backgroundColor=[UIColor whiteColor];
        [self.view addSubview:tf];
        [_tmpViews addObject:tf];
        
        start += tf.frame.size.height+150;
    }
}


-(void)nextQuestion{
    if(_questionNumber==18)
    {
        AllAnsweredViewController *all = [[AllAnsweredViewController alloc]init];
        [self presentViewController:all animated:true completion:nil];
    }
    [_tmpViews makeObjectsPerformSelector: @selector(removeFromSuperview)];
    [_buttons makeObjectsPerformSelector: @selector(removeFromSuperview)];
    [_labelsForSliders makeObjectsPerformSelector: @selector(removeFromSuperview)];
    _questionNumber++;
    [_buttons removeAllObjects];
    [_tmpViews removeAllObjects];
    [_labelsForSliders removeAllObjects];
    UIProgressView *progressView = [[UIProgressView alloc] init];
    progressView.frame = CGRectMake(0,100,768,100);
    [progressView setTransform:CGAffineTransformMakeScale(1.0, 28.0)];
    [progressView setProgress:_questionNumber/18 animated:YES];
    progressView.progressTintColor = [UIColor darkerGreen];
    if (!self.adminMode){
        [self.view addSubview:progressView];
    }
    [_tmpViews addObject:progressView];
    
    UILabel *questionLab =[[UILabel alloc] initWithFrame:CGRectMake(0,75,768,51)];
    [questionLab setTextAlignment:UITextAlignmentCenter];
    [questionLab setTextColor:[UIColor whiteColor]];
    [questionLab setFont:[UIFont systemFontOfSize:40]];
    questionLab.text=[NSString stringWithFormat:@"%d/18",(int)_questionNumber];
    if (!self.adminMode){
        [self.view addSubview:questionLab];
    }
    [_tmpViews addObject:questionLab];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *q = [defaults objectForKey:@"SelectedQuestionnaire"];
    Questionaire *questionaire = [DatabaseManager questionaireWithName:q];
    _question = [DatabaseManager questionWithNumber:[NSNumber numberWithFloat:_questionNumber] questionaire:questionaire];
    _subQuestions = [DatabaseManager allSubQuestionsForQuestion:_question];
    
    [self createMainQuestionLabel];
    
    self.rightNavButt.hidden = YES;
    if (_question.qType==[NSNumber numberWithInt:5]) {
        [self createCheckboxes];
    }else if(_question.qType==[NSNumber numberWithInt:2]){
        [self createSliders];
    }else if(_question.qType==[NSNumber numberWithInt:3]){
        [self createUserInput];
    }else{
        [self createButtons];
    }
}


@end
