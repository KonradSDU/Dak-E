//
//  Answer.h
//  DAK-E
//
//  Created by Milena Gnoińska on 18.11.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class AnswerSheet;

@interface Answer : NSManagedObject

@property (nonatomic, retain) NSString * ans;
@property (nonatomic, retain) NSNumber * questionNumber;
@property (nonatomic, retain) AnswerSheet *answerSheet;

@end
