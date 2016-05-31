//
//  ViewController.h
//  QuizApp
//
//  Created by Brandon Manson on 5/31/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Question.h"

@interface ViewController : UIViewController

@property(strong, nonatomic)Question *question;
@property int questionIndex;

- (NSMutableArray *)createQuestions;
- (NSMutableArray *)createAnswers;

@end

