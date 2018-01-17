//
//  ScoreKeeper.m
//  Maths
//
//  Created by Aaron Chong on 1/16/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (int) scorePercentage {
    
    int totalscore = (self.numberOfRight / (self.numberOfRight + self.numberOfWrong)) * 100;
    
    return totalscore;
}

@end
