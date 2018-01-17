//
//  main.m
//  Maths
//
//  Created by Aaron Chong on 1/16/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "ScoreKeeper.h"
#import "InputHandler.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char play;
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        
        printf("Would you like to play? (y/n): ");
        scanf(" %c", &play);
        
        QuestionManager *manager = [[QuestionManager alloc] init];
        
        
        while (play == 'y') {
            
            char inputChar[255];
            fgets(inputChar, 255, stdin);
            
            AdditionQuestion *line = [[AdditionQuestion alloc] init];
            
            [manager addQuestion:line];
            
            NSString *result = [NSString stringWithCString: fgets(inputChar, 255, stdin) encoding:NSUTF8StringEncoding];

            NSString *newResult = [result stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];

            NSInteger number = [newResult intValue];
            
            if (number == line.answer) {
                
                NSLog(@"Right!\n");
                score.numberOfRight++;
                
            } else {
                
                NSLog(@"Wrong! Answer is %ld.\n", line.answer);
                score.numberOfWrong++;
            }
            
            NSLog(@"\nRight:%d  Wrong:%d -- %d%%", score.numberOfRight, score.numberOfWrong, [score scorePercentage]);
            
            NSLog(@"%@", manager.timeOutput);
            
            printf("Would you like to play again? (y/n): ");
            scanf(" %c", &play);
            
        }
        
    }
        
    return 0;
}

