//
//  DatabaseManager.h
//  DAK-E
//
//  Created by Konrad Gnoinski on 04/11/14.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Questionaire.h"
#import "SubQuestion.h"
#import "Question.h"
//#import "AnswerSheet.h"


@interface DatabaseManager : NSObject

//QUESTIONAIRE

+ (Questionaire*)insertQuestionaireWithName:(NSString*)name;

+ (Questionaire*)questionaireWithName:(NSString*)name;

+ (NSArray*)allQuestionares;


//QUESTION

+ (Question*)insertQuestionWithQuestion:(NSString*)question
                           questionType:(NSNumber*)qType
                               subTitle:(NSString*)subTitle
                                answers:(NSArray*)answers
                               questionaire:(Questionaire*)questionaire;

+ (Question*)questionWithNumber:(NSNumber*)number
                   questionaire:(Questionaire*)questionaire;

+ (void)removeAllQuestionsForQuestionaire:(Questionaire*)questionaire;

//SUBQUESTION

+ (SubQuestion*)insertSubQuestionWithQuestion:(NSString*)question
                                     question:(Question*)question;

+ (void)removeAllSubQuestionsForQuestion:(Question*)question;

+ (NSArray*)allSubQuestionsForQuestion:(Question*)question;

//ANSWER SHEET
/*
+ (AnswerSheet*)insertAnswerSheetForUser:(NSString*)userID
                           Questionnaire:(Questionaire*)questionnaire
                                 answers:(NSMutableArray*)answers;

+ (AnswerSheet*)answerSheetForUser:(NSString*)userID
                     Questionnaire:(Questionaire*)questionnaire;

+ (void)removeAnswerSheetForUser:(NSString*)userID
                   Questionnaire:(Questionaire*)questionnaire;*/

@end
