//
//  Question.m
//  QuizApp
//
//  Created by Brandon Manson on 5/31/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Question.h"

@implementation Question

- (id)initWithQuestions:(NSMutableArray *)questions andAnswers:(NSMutableArray *)answers {
    self = [super init];
    if (self) {
        _questions = questions;
        _answers = answers;
    }
    return self;
}

+ (id)initWithQuestions:(NSMutableArray *)questions andAnswers:(NSMutableArray *)answers {
    return [[super alloc]initWithQuestions:questions andAnswers:answers];
}


@end
