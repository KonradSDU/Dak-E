//
//  BaseViewController.h
//  DAK-E
//
//  Created by Konrad Gnoinski on 21/10/14.
//  Copyright (c) 2014 Konrad Gnoinski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController
@property (readwrite) float questionNumber; //need to be setted for evry screen
@property (nonatomic, retain) NSString *leftNavigationButton; //default value is back - u can change it in your subclass
@property (nonatomic, retain) NSString *rightNavigationButton;//default value is next - u can change it in your subclass
@property (nonatomic, retain) NSString *segueToNextControllerName;
-(void)updateView;
@end
