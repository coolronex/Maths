//
//  QuestionManager.h
//  Maths
//
//  Created by Aaron Chong on 1/17/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property NSMutableArray *questions;

- (void) addQuestion: (Question *) question;
- (NSString *) timeOutput;

@end
