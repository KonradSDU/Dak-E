//
//  SubQuestion.h
//  DAK-E
//
//  Created by Konrad Gnoinski on 05/11/14.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Question;

@interface SubQuestion : NSManagedObject

@property (nonatomic, retain) NSString * answer;
@property (nonatomic, retain) NSNumber * sQNumber;
@property (nonatomic, retain) Question *question;

@end
