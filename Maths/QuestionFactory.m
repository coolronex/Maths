//
//  QuestionFactory.m
//  Maths
//
//  Created by Aaron Chong on 1/17/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (Question *) generateRandomQuestion {
    
    NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion"];
    NSUInteger randomClassIndex = arc4random_uniform(questionSubclassNames.count);
    NSString *randomClass = questionSubclassNames[randomClassIndex];
    
    return [[NSClassFromString(randomClass) alloc] init];
    
}



@end
