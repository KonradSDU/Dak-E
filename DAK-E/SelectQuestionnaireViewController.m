//
//  SelectQuestionnaireViewController.m
//  DAK-E
//
//  Created by Milena Gnoińska on 15.11.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "SelectQuestionnaireViewController.h"

@interface SelectQuestionnaireViewController ()

@property (nonatomic, retain) NSMutableArray *names;

@end

@implementation SelectQuestionnaireViewController
{
    NSArray *questionnaires;
}

- (void)viewDidLoad {
    self.adminMode = YES;
    [super viewDidLoad];
    self.rightNavButt.hidden = YES;
    questionnaires = [DatabaseManager allQuestionares];
    self.names = [[NSMutableArray alloc]init];
    for (Questionaire *questionnaire in questionnaires){
        [self.names addObject:questionnaire.name];
    }
    // Do any additional setup after loading the view.
}

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
    
    cell.textLabel.text = [self.names objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
     UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
     NSString *selectedQuestionnaire = cell.textLabel.text;
     NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
     [prefs setObject:selectedQuestionnaire forKey:@"SelectedQuestionnaire"];
     [prefs synchronize];
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
