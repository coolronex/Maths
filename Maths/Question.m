//
//  AdditionQuestion.m
//  Maths
//
//  Created by Aaron Chong on 1/16/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _startTime = [NSDate date];
        
        int min = 10;
        int max = 100;
        
        _rightValue = arc4random_uniform(max - min + 1) + min;
        _leftValue = arc4random_uniform(max - min + 1) + min;
        
    }
    return self;
}

- (void)generateQuestion {
    
    
}

- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime {
    
    return [_endTime timeIntervalSinceDate:_startTime];

}

@end
