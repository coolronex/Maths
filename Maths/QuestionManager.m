//
//  QuestionManager.m
//  Maths
//
//  Created by Aaron Chong on 1/17/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _questions = [NSMutableArray new];
        
    }
    return self;
}

- (void) addQuestion: (AdditionQuestion *) newQuestion {
    
    [self.questions addObject:newQuestion];
    
}

- (NSString *) timeOutput {
    
    NSTimeInterval totalTime = 0;
    
    for (AdditionQuestion *question in _questions) {
        
        totalTime += question.answerTime;
        
    }
    
    return [NSString stringWithFormat: @"Total time: %g, Average time: %g", totalTime, totalTime/self.questions.count];
}

@end
