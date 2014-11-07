//
//  AppDelegate.m
//  DAK-E
//
//  Created by Konrad Gnoinski on 21/10/14.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import "AppDelegate.h"
#import "DatabaseManager.h"
#import "Questionaire.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"HasLaunchedOnce"])
    {
        // app already launched
    }
    else
    {
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"HasLaunchedOnce"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [DatabaseManager insertQuestionaireWithName:@"general"];
        Questionaire *que = [DatabaseManager questionaireWithName:@"general"];
        [DatabaseManager insertQuestionWithQuestion:@"Hvordan synes du dit helbred er alt i alt?" questionType:[NSNumber numberWithInt:1] subTitle:nil answers:[NSArray arrayWithObjects:@"Fremragende", @"Vældigt godt", @"Godt", @"Mindre godt", @"Dårligt", nil] questionaire:que];
        
        [DatabaseManager insertQuestionWithQuestion:@"Vægt og højde" questionType:[NSNumber numberWithInt:2] subTitle:nil answers:[NSArray arrayWithObjects:@"Hvad er din vægt?", @"Hvor høj er du?", nil] questionaire:que];
        
        [DatabaseManager insertQuestionWithQuestion:@"Ryger du?" questionType:[NSNumber numberWithInt:1] subTitle:nil answers:[NSArray arrayWithObjects:@"Ryger til dagligt", @"Lejlighedsvis ryger", @"Er stoppet for mindre end 6 måneder siden",@"Er stoppet for mere end 6 måneder siden", @"Har aldrig røget (hvis du aldrig har røget, gå da til spørgsmål 7)", nil] questionaire:que];
        
        [DatabaseManager insertQuestionWithQuestion:@"Indenfor de sidste 4 uger, har du da haft åndenød i forbindelse med hverdagsaktiviteter? (for eksempel en gåtur, let havearbejde, rengøring, indkøb og lignende)" questionType:[NSNumber numberWithInt:1] subTitle:nil answers:[NSArray arrayWithObjects:@"På intet tidspunkt", @"Sjældent", @"Af og til", @"Ofte", @"Hele tiden", nil] questionaire:que];
        
        [DatabaseManager insertQuestionWithQuestion:@"Hoster du slim op?" questionType:[NSNumber numberWithInt:1] subTitle:nil answers:[NSArray arrayWithObjects:@"Nej, aldrig", @"Kun når jeg er forkølet eller har hals- eller lungebetændelse", @"Ja, et par dage om måneden", @"Ja, de fleste dage på en uge", @"Ja, alle dage", nil] questionaire:que];
        
        [DatabaseManager insertQuestionWithQuestion:@"I hvor høj grad er du enig i følgende udsagn. På grund af åndenød har jeg i de sidste 12 måneder bevæget mig mindre end jeg plejer." questionType:[NSNumber numberWithInt:1] subTitle:nil answers:[NSArray arrayWithObjects:@"Meget uenig", @"Uenig", @"Måske", @"Enig", @"Meget enig", nil] questionaire:que];
        
        [DatabaseManager insertQuestionWithQuestion:@"Hvor mange genstande drikker du i gennemsnit om ugen på en almindelig uge?" questionType:[NSNumber numberWithInt:6] subTitle:@"1 almindelig øl (4,6 %) = 1 genstand \n1 almindelig øl i plastflaske = 1 1/4 genstand \n1 guldøl (5,8 %) = 1 1/4 genstand \n 1 stærk øl (7 %) = 1 1/2 - 2 genstande \n1 almindeligt glas vin (ca. 12 %) = 1 genstand \n1 glas hedvin (8 cl) = 1 genstand \n4 cl. spiritus, 2 små snapse (38 %) = 1 genstand \n1 flaske spiritus (70 cl) = 20 genstande \n1 flaske hedvin (70 cl) = 10 genstande \n1 flaske rødvin (70 cl) = 6 genstande" answers:[NSArray arrayWithObjects:@"Jeg drikker ikke", @"1-6 genstande", @"7-14 genstande", @"15-21 genstande", @"22-28 genstande", @"29- genstande", nil] questionaire:que];
        //8
        [DatabaseManager insertQuestionWithQuestion:@"Hvor ofte drikker du mere end 5 genstande ved samme lejlighed?" questionType:[NSNumber numberWithInt:1] subTitle:nil answers:[NSArray arrayWithObjects:@"Dagligt eller næsten dagligt", @"Ugentligt", @"Månedligt", @"Sjældent", @"Aldrig", nil] questionaire:que];
        //9
        [DatabaseManager insertQuestionWithQuestion:@"Hvor hyppigt spiser du grøntsager og/eller rodfrugter (friske såvel som frosne)" questionType:[NSNumber numberWithInt:1] subTitle:nil answers:[NSArray arrayWithObjects:@"To gange dagligt eller oftere", @"En gang dagligt", @"Nogle gange i løbet af ugen", @"En gang om ugen eller sjældneret", nil] questionaire:que];
        //10
        [DatabaseManager insertQuestionWithQuestion:@"Hvor hyppigt spiser du frugt og/eller bær (friske, frosne, konserves eller juice/smoothie)" questionType:[NSNumber numberWithInt:1] subTitle:nil answers:[NSArray arrayWithObjects:@"To gange dagligt eller oftere", @"En gang dagligt", @"Nogle gange i løbet af ugen", @"En gang om ugen eller sjældnere", nil] questionaire:que];
        //11
        [DatabaseManager insertQuestionWithQuestion:@"Hvor hyppigt spiser du fisk eller skaldyr som hovedret" questionType:[NSNumber numberWithInt:1] subTitle:nil answers:[NSArray arrayWithObjects:@"Tre gange om ugen eller oftere", @"To gange om ugen", @"En gang om ugen", @"Et par gange om måneden eller sjældnere", nil] questionaire:que];
        //12
        [DatabaseManager insertQuestionWithQuestion:@"Hvor hyppigt spiser du wienerbrød, slik, chips og/eller drikker sodavand" questionType:[NSNumber numberWithInt:1] subTitle:nil answers:[NSArray arrayWithObjects:@"To gange dagligt eller oftere", @"En gang dagligt", @"Nogle gange i løbet af ugen", @"En gang om ugen eller sjældnere", nil] questionaire:que];
        //13
        [DatabaseManager insertQuestionWithQuestion:@"Hvis du ser på det seneste år, hvad ville du så sige passer bedst som beskrivelse af din fysiske aktivitet i fritiden?" questionType:[NSNumber numberWithInt:1] subTitle:nil answers:[NSArray arrayWithObjects:@"Træner hårdt og dyrker konkurrenceidræt regelmæssigt og flere gange om ugen", @"Dyrker motionsidræt eller udfører tungt havearbejde eller lignende mindst 4 timer om ugen", @"Spadserer, cykler eller har anden lettere motion mindst 4 timer om ugen ( medregn også søndagsture, lettere havearbejde og cykling/gang til arbejde", @"Læser, ser fjernsyn eller har anden stillesiddende beskæftigelse", nil] questionaire:que];
        //14
        [DatabaseManager insertQuestionWithQuestion:@"Hvis du tænker på dine hofter og knæ, har du så..." questionType:[NSNumber numberWithInt:5] subTitle:nil answers:[NSArray arrayWithObjects:@"Haft vedvarende smerter eller gener i dine knæ eller hofter indenfor den sidste måned?", @"Haft en skade i knæ eller hofter som gjorde at du opsøgte læge?", @"Fået foretaget en operation i knæ eller hofter?", nil] questionaire:que];
        //15
        [DatabaseManager insertQuestionWithQuestion:@"Ønsker du hjælp til at ændre din livsstil?" questionType:[NSNumber numberWithInt:1] subTitle:nil answers:[NSArray arrayWithObjects:@"Ja", @"ja, men ikke lige nu", nil] questionaire:que];
        //16
        [DatabaseManager insertQuestionWithQuestion:@"Er der nogen i din nærmeste familie som - inden de blev 70 år - har eller har haft (nærmeste familie er bedsteforældre, forældre, søskende, børn)" questionType:[NSNumber numberWithInt:4] subTitle:nil answers:[NSArray arrayWithObjects:@"Forhøjet blodtryk", @"Forhøjet kolesterol", @"Blodprop i hjertet", @"Blodprop i hjernen", @"Blodprop i lunger eller ben", @"Type-1 diabetes", @"Type-2 diabetes", @"KOL", @"Slidgigt/ artrose", nil] questionaire:que];
        //17
        [DatabaseManager insertQuestionWithQuestion:@"Ønsker du at give din e-mail adresse(Din e-mail adresse vil blive brugt til at kommunikere elektronisk mellem dig og sundhedsvæsenet)" questionType:[NSNumber numberWithInt:3] subTitle:nil answers:[NSArray arrayWithObjects:@"E-mail adresse:", nil] questionaire:que];
        //18
        [DatabaseManager insertQuestionWithQuestion:@"Må vi kontakte dig igen i forbindelse med yderligere forskning?(Du har fået spørgeskemaet som led i et stort forskningsprojekt. I projektet Undersøges flere spørgsmål relateret til projektets overordnede formål om at fremme sunde levevaner og opspore og forebygge sygdomme forårsaget af en usund livsstil. Det vil her være til stor hjælp, at så mange borgere som muligt vil bidrage til at skabe ny viden på dette område)" questionType:[NSNumber numberWithInt:1] subTitle:nil answers:[NSArray arrayWithObjects:@"Ja, I må gerne kontakte mig i forbindelse med forskning", @"Nej tak, jeg vil IKKE kontaktes yderligere i forbindelse med forskning", nil] questionaire:que];

    }
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
    [self saveContext];
}

#pragma mark - Core Data stack

@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;

- (NSURL *)applicationDocumentsDirectory {
    // The directory the application uses to store the Core Data store file. This code uses a directory named "SDU.DAK_E" in the application's documents directory.
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (NSManagedObjectModel *)managedObjectModel {
    // The managed object model for the application. It is a fatal error for the application not to be able to find and load its model.
    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"DAK_E" withExtension:@"momd"];
    _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return _managedObjectModel;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    // The persistent store coordinator for the application. This implementation creates and return a coordinator, having added the store for the application to it.
    if (_persistentStoreCoordinator != nil) {
        return _persistentStoreCoordinator;
    }
    
    // Create the coordinator and store
    
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"DAK_E.sqlite"];
    NSError *error = nil;
    NSString *failureReason = @"There was an error creating or loading the application's saved data.";
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        // Report any error we got.
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[NSLocalizedDescriptionKey] = @"Failed to initialize the application's saved data";
        dict[NSLocalizedFailureReasonErrorKey] = failureReason;
        dict[NSUnderlyingErrorKey] = error;
        error = [NSError errorWithDomain:@"YOUR_ERROR_DOMAIN" code:9999 userInfo:dict];
        // Replace this with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    return _persistentStoreCoordinator;
}


- (NSManagedObjectContext *)managedObjectContext {
    // Returns the managed object context for the application (which is already bound to the persistent store coordinator for the application.)
    if (_managedObjectContext != nil) {
        return _managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (!coordinator) {
        return nil;
    }
    _managedObjectContext = [[NSManagedObjectContext alloc] init];
    [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    return _managedObjectContext;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil) {
        NSError *error = nil;
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) {
            // Replace this implementation with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
    }
}

@end
