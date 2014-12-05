//
//  SelectQuestionViewController.m
//  DAK-E
//
//  Created by Milena Gnoińska on 18.11.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "SelectQuestionViewController.h"
#import "DatabaseManager.h"
#import "Questionaire.h"
#import "UIColor+customColors.h"

@interface SelectQuestionViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, retain) NSMutableArray *names;

@end

@implementation SelectQuestionViewController{
    NSArray *questionnaires;
}

- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor lighterGreen];
    UIView* bview = [[UIView alloc] init];
    bview.backgroundColor = [UIColor lighterGreen];
    [_tableView setBackgroundView:bview];
    [super viewDidLoad];
    questionnaires = [DatabaseManager allQuestionares];
    self.names = [[NSMutableArray alloc]init];
    for (Questionaire *questionnaire in questionnaires){
        [self.names addObject:questionnaire.name];
    }

    // Do any additional setup after loading the view.
}

-(BOOL)prefersStatusBarHidden { return YES; }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [questionnaires count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    cell.backgroundColor=[UIColor darkerGreen];
    cell.textLabel.text = [self.names objectAtIndex:indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSString *selectedQuestionnaire = cell.textLabel.text;
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    [prefs setObject:selectedQuestionnaire forKey:@"SelectedQuestionnaire"];
    [prefs synchronize];
    [self.navigationController popToRootViewControllerAnimated:YES];
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
