//
//  AnswerSheet.h
//  DAK-E
//
//  Created by Milena Gnoińska on 18.11.2014.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Answer;

@interface AnswerSheet : NSManagedObject

@property (nonatomic, retain) NSString * userID;
@property (nonatomic, retain) NSSet *answer;
@end

@interface AnswerSheet (CoreDataGeneratedAccessors)

- (void)addAnswerObject:(Answer *)value;
- (void)removeAnswerObject:(Answer *)value;
- (void)addAnswer:(NSSet *)values;
- (void)removeAnswer:(NSSet *)values;

@end
