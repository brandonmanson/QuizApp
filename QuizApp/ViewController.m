//
//  ViewController.m
//  QuizApp
//
//  Created by Brandon Manson on 5/31/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ViewController.h"
#import "Question.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *questionTextLabel;
@property (strong, nonatomic) IBOutlet UILabel *answerTextLabel;
@property (strong, nonatomic) IBOutlet UIButton *nextQuestionButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _question = [[Question alloc]initWithQuestions:[self createQuestions] andAnswers:[self createAnswers]];
    _questionIndex = 0;
    _questionTextLabel.text = _question.questions[_questionIndex];
    _answerTextLabel.alpha = 0.0;
    _answerTextLabel.text = _question.answers[_questionIndex];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSMutableArray *)createQuestions {
    NSMutableArray *questions = [[NSMutableArray alloc]initWithObjects:@"What is 2 + 2?", @"What does the fox say?", @"What kind of beer did Michael bring me back from Chicago?", nil];
     return questions;
}

- (NSMutableArray *)createAnswers {
    NSMutableArray *answers = [[NSMutableArray alloc]initWithObjects:@"4", @"ningningningningning", @"Revolution Brewing Anti-Hero IPA", nil];
    return answers;
}

- (IBAction)showAnswerButtonPressed:(UIButton *)sender {
    _answerTextLabel.alpha = 100.0;
}

- (IBAction)nextQuestionButtonPressed:(UIButton *)sender {
    if (_questionIndex <= 2) {
        _questionIndex++;
        _answerTextLabel.alpha = 0.0;
        _answerTextLabel.text = _question.answers[_questionIndex];
        _questionTextLabel.text = _question.questions[_questionIndex];
    }
}

@end
