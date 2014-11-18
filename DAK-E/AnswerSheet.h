//
//  AnswerSheet.h
//  DAK-E
//
//  Created by Milena Gnoińska on 11.11.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import <CoreData/CoreData.h>

@class Questionaire;

@interface AnswerSheet : NSManagedObject

@property (nonatomic,retain) NSString *userID;
@property (nonatomic, retain) NSString *questionnaireName;
@property (nonatomic, retain) NSMutableArray *answers;

@end
