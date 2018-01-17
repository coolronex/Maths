//
//  AdditionQuestion.h
//  Maths
//
//  Created by Aaron Chong on 1/16/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property NSString *question;
@property (nonatomic) NSInteger answer;
@property NSDate *startTime;
@property NSDate *endTime;
@property NSInteger rightValue;
@property NSInteger leftValue;

- (void) generateQuestion;
- (NSTimeInterval) answerTime;

@end
