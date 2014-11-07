//
//  QOneAnswer.h
//  DAK-E
//
//  Created by Konrad Gnoinski on 05/11/14.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Questionaire, SubQuestion;

@interface Question : NSManagedObject

@property (nonatomic, retain) NSNumber * qNumber;
@property (nonatomic, retain) NSString * question;
@property (nonatomic, retain) NSNumber * qType;
@property (nonatomic, retain) NSString * subTitle;
@property (nonatomic, retain) Questionaire *questionaire;
@property (nonatomic, retain) NSSet *subQuestions;
@end

@interface Question (CoreDataGeneratedAccessors)

- (void)addSubQuestionsObject:(SubQuestion *)value;
- (void)removeSubQuestionsObject:(SubQuestion *)value;
- (void)addSubQuestions:(NSSet *)values;
- (void)removeSubQuestions:(NSSet *)values;

@end
