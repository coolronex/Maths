//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Aaron Chong on 1/17/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self generateQuestion];
        
    }
    return self;
}

- (void) generateQuestion {
    
    super.question = [NSString stringWithFormat:@"%ld - %ld = ?", super.rightValue, super.leftValue];
    super.answer = super.rightValue - super.leftValue;
}

@end
