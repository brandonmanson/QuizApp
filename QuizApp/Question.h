//
//  Question.h
//  QuizApp
//
//  Created by Brandon Manson on 5/31/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property(strong, nonatomic)NSMutableArray *questions;
@property(strong, nonatomic)NSMutableArray *answers;

- (void)firstQuestionString;

- (id)initWithQuestions:(NSMutableArray *)questions andAnswers:(NSMutableArray *)answers;
+ (id)initWithQuestions:(NSMutableArray *)questions andAnswers:(NSMutableArray *)answers;

@end
