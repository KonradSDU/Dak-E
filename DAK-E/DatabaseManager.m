//
//  DatabaseManager.m
//  DAK-E
//
//  Created by Konrad Gnoinski on 04/11/14.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "DatabaseManager.h"
#import "CoreDataContext.h"

@interface DatabaseManager ()

//QUESTIONAIRE


//QUESTION

+ (Question*)questionWithQuestion:(NSString*)question;

+ (void)removeQuestionWithQuestion:(NSString*)question
                   forQuestionaire:(Questionaire*)questionaire;

//SUBQUESTION


@end

@implementation DatabaseManager

+ (Questionaire*)insertQuestionaireWithName:(NSString*)name{
    if ([DatabaseManager questionaireWithName:name]==nil){
        Questionaire* questionaire = [NSEntityDescription insertNewObjectForEntityForName:@"Questionaire" inManagedObjectContext:[CoreDataContext getInstance].managedObjectContext];
        questionaire.name = name;
        [[CoreDataContext getInstance] saveContext];
        return questionaire;
    }
    NSLog(@"Questionaire with that name already exist");
    return nil;
};

+ (Questionaire*)questionaireWithName:(NSString*)name{
    NSFetchRequest *fetch = [[NSFetchRequest alloc] init];
    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:@"Questionaire" inManagedObjectContext: [CoreDataContext getInstance].managedObjectContext];
    [fetch setEntity:entityDescription];
    [fetch setPredicate:[NSPredicate predicateWithFormat:@"name=%@", name]];
    NSError *error = nil;
    NSArray *fetchedObjects = [[CoreDataContext getInstance].managedObjectContext executeFetchRequest:fetch error:&error];
    if(error==nil){
        if([fetchedObjects count] != 0)
        {
            return [fetchedObjects objectAtIndex:0];
        }
    }
    return nil;
}

+ (NSArray*)allQuestionares{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Questionaire" inManagedObjectContext:[CoreDataContext getInstance].managedObjectContext];
    [fetchRequest setEntity:entity];
    NSError *error = nil;
    
    NSArray *fetchedObjects = [[CoreDataContext getInstance].managedObjectContext executeFetchRequest:fetchRequest error:&error];
    if (error != nil)
        NSLog(@"Unresolved error: %@, %@", error, [error userInfo]);
    return fetchedObjects;
}

+ (Question*)insertQuestionWithQuestion:(NSString*)question
                           questionType:(NSNumber*)qType
                               subTitle:(NSString*)subTitle
                                answers:(NSArray*)answers
                           questionaire:(Questionaire*)questionaire{
    
    if ([DatabaseManager questionWithQuestion:question]==nil){
        Question* q = [NSEntityDescription insertNewObjectForEntityForName:@"Question" inManagedObjectContext:[CoreDataContext getInstance].managedObjectContext];
        
        q.qType=qType;
        q.subTitle=subTitle;
        q.questionaire=questionaire;
        NSNumber *qnum=[NSNumber numberWithInt:[q.questionaire.questions count]];
        q.qNumber =qnum;
        q.question = question;
        for (NSString *answer in answers ) {
            [DatabaseManager insertSubQuestionWithQuestion:answer question:q];
        }
        
        [[CoreDataContext getInstance] saveContext];
        return q;
    }
    NSLog(@"Question with that question already exist");
    return nil;
}

+ (Question*)questionWithQuestion:(NSString*)question{
    NSFetchRequest *fetch = [[NSFetchRequest alloc] init];
    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:@"Question" inManagedObjectContext: [CoreDataContext getInstance].managedObjectContext];
    [fetch setEntity:entityDescription];
    [fetch setPredicate:[NSPredicate predicateWithFormat:@"question=%@", question]];
    NSError *error = nil;
    NSArray *fetchedObjects = [[CoreDataContext getInstance].managedObjectContext executeFetchRequest:fetch error:&error];
    if(error==nil){
        if([fetchedObjects count] != 0)
        {
            return [fetchedObjects objectAtIndex:0];
        }
    }
    return nil;
}

+ (void)removeQuestionWithQuestion:(NSString*)question
                   forQuestionaire:(Questionaire*)questionaire{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Question" inManagedObjectContext:[CoreDataContext getInstance].managedObjectContext];
    [fetchRequest setEntity:entity];
    [fetchRequest setPredicate:[NSPredicate predicateWithFormat:@"question=%@ AND questionaire = %@",question, questionaire]];
    NSError *error = nil;
    NSArray *fetchedObjects = [[CoreDataContext getInstance].managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    if (fetchedObjects != nil && error == nil) {
        for (NSManagedObject *object in fetchedObjects) {
            [[CoreDataContext getInstance].managedObjectContext deleteObject:object];
        }
    }else {
        NSLog(@"Unresolved error: %@, %@", error, [error userInfo]);
    }
    
    [[CoreDataContext getInstance] saveContext];
}

+ (Question*)questionWithNumber:(NSNumber*)number
                   questionaire:(Questionaire*)questionaire{
    
    NSFetchRequest *fetch = [[NSFetchRequest alloc] init];
    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:@"Question" inManagedObjectContext: [CoreDataContext getInstance].managedObjectContext];
    [fetch setEntity:entityDescription];
    [fetch setPredicate:[NSPredicate predicateWithFormat:@"qNumber=%@ AND questionaire = %@", number, questionaire]];
    NSError *error = nil;
    NSArray *fetchedObjects = [[CoreDataContext getInstance].managedObjectContext executeFetchRequest:fetch error:&error];
    if(error==nil){
        if([fetchedObjects count] != 0)
        {
            return [fetchedObjects objectAtIndex:0];
        }
    }
    NSLog(@"Unresolved error: %@, %@", error, [error userInfo]);
    return nil;
}

+ (void)removeAllQuestionsForQuestionaire:(Questionaire*)questionaire{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Question" inManagedObjectContext:[CoreDataContext getInstance].managedObjectContext];
    [fetchRequest setEntity:entity];
    [fetchRequest setPredicate:[NSPredicate predicateWithFormat:@"questionaire=%@",questionaire]];
    NSError *error = nil;
    NSArray *fetchedObjects = [[CoreDataContext getInstance].managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    if (fetchedObjects != nil && error == nil) {
        for (NSManagedObject *object in fetchedObjects) {
            [[CoreDataContext getInstance].managedObjectContext deleteObject:object];
        }
    }else {
        NSLog(@"Unresolved error: %@, %@", error, [error userInfo]);
    }
    
    [[CoreDataContext getInstance] saveContext];
}

+ (SubQuestion*)insertSubQuestionWithQuestion:(NSString*)subQuestion
                                     question:(Question*)question{
    
        SubQuestion* sQ = [NSEntityDescription insertNewObjectForEntityForName:@"SubQuestion" inManagedObjectContext:[CoreDataContext getInstance].managedObjectContext];
    
        sQ.answer=subQuestion;
        sQ.question = question;
        NSNumber *num = [NSNumber numberWithInt:[sQ.question.subQuestions count]];
        sQ.sQNumber = num;
        [[CoreDataContext getInstance] saveContext];
        return sQ;
}

+ (void)removeAllSubQuestionsForQuestion:(Question*)question{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"SubQuestion" inManagedObjectContext:[CoreDataContext getInstance].managedObjectContext];
    [fetchRequest setEntity:entity];
    [fetchRequest setPredicate:[NSPredicate predicateWithFormat:@"question=%@",question]];
    NSError *error = nil;
    NSArray *fetchedObjects = [[CoreDataContext getInstance].managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    if (fetchedObjects != nil && error == nil) {
        for (NSManagedObject *object in fetchedObjects) {
            [[CoreDataContext getInstance].managedObjectContext deleteObject:object];
        }
    }else {
        NSLog(@"Unresolved error: %@, %@", error, [error userInfo]);
    }
    
    [[CoreDataContext getInstance] saveContext];
}

+ (NSArray*)allSubQuestionsForQuestion:(Question*)question{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"SubQuestion" inManagedObjectContext:[CoreDataContext getInstance].managedObjectContext];
    [fetchRequest setEntity:entity];
    [fetchRequest setPredicate:[NSPredicate predicateWithFormat:@"question=%@",question]];
    NSError *error = nil;
    NSArray *fetchedObjects = [[CoreDataContext getInstance].managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    if (fetchedObjects != nil && error == nil) {
        return fetchedObjects;
    }else {
        NSLog(@"Unresolved error: %@, %@", error, [error userInfo]);
        return  nil;
    }
}

//ANSWER SHEET

+ (AnswerSheet*)insertAnswerSheetForUser:(NSString*)userID{
    
    AnswerSheet *answerSheet = [NSEntityDescription insertNewObjectForEntityForName:@"AnswerSheet" inManagedObjectContext:[CoreDataContext getInstance].managedObjectContext];
    answerSheet.userID = userID;
    
    [[CoreDataContext getInstance] saveContext];
    
    return answerSheet;
}

+ (AnswerSheet*)answerSheetForUser:(NSString*)userID{
    NSFetchRequest *fetch = [[NSFetchRequest alloc] init];
    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:@"AnswerSheet" inManagedObjectContext: [CoreDataContext getInstance].managedObjectContext];
    [fetch setEntity:entityDescription];
    [fetch setPredicate:[NSPredicate predicateWithFormat:@"userID=%@", userID]];
    NSError *error = nil;
    NSArray *fetchedObjects = [[CoreDataContext getInstance].managedObjectContext executeFetchRequest:fetch error:&error];
    if(error==nil){
        if([fetchedObjects count] != 0)
        {
            return [fetchedObjects objectAtIndex:0];
        }
    }
    return nil;
}

//ANSWER

+ (Answer*)insertAnswerWithAnswer:(NSString*)answer
                           number:(NSNumber*)number
                      answerSheet:(AnswerSheet*)answerSheet{
    Answer *answer1 = [NSEntityDescription insertNewObjectForEntityForName:@"Answer" inManagedObjectContext:[CoreDataContext getInstance].managedObjectContext];
    answer1.ans = answer;
    answer1.questionNumber=number;
    answer1.answerSheet=answerSheet;
    
    [[CoreDataContext getInstance] saveContext];
    
    return answer1;
}


@end
