//
//  MutiplicationQuestion.m
//  Maths
//
//  Created by Aaron Chong on 1/17/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self generateQuestion];
        
    }
    return self;
}

- (void) generateQuestion {
    
    super.question = [NSString stringWithFormat:@"%ld x %ld = ?", super.rightValue, super.leftValue];
    super.answer = super.rightValue * super.leftValue;
}



@end
