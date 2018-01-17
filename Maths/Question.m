//
//  AdditionQuestion.m
//  Maths
//
//  Created by Aaron Chong on 1/16/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _startTime = [NSDate date];
        NSLog(@"%@", self.startTime);
        
        int min = 10;
        int max = 100;
        
        int randomNumber1 = arc4random_uniform(max - min + 1) + min;
        int randomNumber2 = arc4random_uniform(max - min + 1) + min;
        int sum = randomNumber1 + randomNumber2;
    
        NSString *expression = [NSString stringWithFormat:@"%d + %d = ?", randomNumber1, randomNumber2];
        
        NSLog(@"%@", expression);
        
        _question = expression;
        _answer = sum;
    
    }
    return self;
}

- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime {
    
    return [_endTime timeIntervalSinceDate:_startTime];

}

@end
