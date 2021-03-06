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
#import "QuestionFactory.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char play;
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        
        printf("Would you like to play? (y/n): ");
        scanf(" %c", &play);
        
        QuestionManager *manager = [[QuestionManager alloc] init];
        QuestionFactory *factory = [[QuestionFactory alloc]init];
        
        
        while (play == 'y') {
            
            char inputChar[255];
            fgets(inputChar, 255, stdin);
            
            
            Question *line = [factory generateRandomQuestion];
            
            [manager addQuestion:line];
            
            NSLog(@"%@",line.question);
            
            NSString *newResult = [InputHandler getUserInput];

            NSInteger number = [newResult intValue];
            
            if (number == line.answer) {
                
                NSLog(@"Right!\n");
                score.numberOfRight++;
                
            } else {
                
                NSLog(@"Wrong! Answer is %ld.\n", line.answer);
                score.numberOfWrong++;
            }
            
            NSLog(@"\nRight:%d  Wrong:%d -- %d%%", score.numberOfRight, score.numberOfWrong, [score scorePercentage]);
            
            NSLog(@"%@", [manager timeOutput]);
            
            printf("Would you like to play again? (y/n): ");
            scanf(" %c", &play);
            
        }
        
    }
        
    return 0;
}

