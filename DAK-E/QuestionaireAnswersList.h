//
//  QuestionaireAnswersList.h
//  DAK-E
//
//  Created by Konrad Gnoinski on 28/10/14.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import <Foundation/Foundation.h>
//in answer string provide a full answer string
@interface QuestionaireAnswersList : NSObject
@property (nonatomic,retain) NSString *Q1Answer;
@property (nonatomic,retain) NSString *Q2Weight;
@property (nonatomic,retain) NSString *Q2Height;
@property (nonatomic,retain) NSString *Q3Answer;
@property (nonatomic,retain) NSString *Q4Answer;
@property (nonatomic,retain) NSString *Q5Answer;
@property (nonatomic,retain) NSString *Q6Answer;
@property (nonatomic,retain) NSString *Q7Answer;
@property (nonatomic,retain) NSString *Q8Answer;
@property (nonatomic,retain) NSString *Q9Answer;
@property (nonatomic,retain) NSString *Q10Answer;
@property (nonatomic,retain) NSString *Q11Answer;
@property (nonatomic,retain) NSString *Q12Answer;
@property (nonatomic,retain) NSString *Q13Answer;
//@property (nonatomic,retain) NSMutableArray *Q14Answer;//provide full answer string as a object of type nsstring in this array
@property (nonatomic, retain) NSString *Q14Answer1;
@property (nonatomic, retain) NSString *Q14Answer2;
@property (nonatomic, retain) NSString *Q14Answer3;
@property (nonatomic,retain) NSString *Q15Answer;
@property (nonatomic,retain) NSMutableArray *Q16Answer;//provide full answer string as a object of type nsstring in this array
@property (nonatomic,retain) NSString *Q17Answer;
@property (nonatomic,retain) NSString *Q18Answer;
@end
