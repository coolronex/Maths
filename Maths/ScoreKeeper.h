//
//  ScoreKeeper.h
//  Maths
//
//  Created by Aaron Chong on 1/16/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property int numberOfRight;
@property int numberOfWrong;

- (int) scorePercentage;

@end
