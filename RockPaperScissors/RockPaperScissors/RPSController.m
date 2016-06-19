//
//  RPSController.m
//  RockPaperScissors
//
//  Created by Akshay Iyer on 6/18/16.
//  Copyright © 2016 akshaytiyer. All rights reserved.
//

#import "RPSController.h"
#import "RPSTurn.h"
#import "RPSGame.h"

@implementation RPSController

-(void) throwDown: (Move) playersMove {
 
    //Here the RPSTurn class generates the opponents move
    RPSTurn *playersTurn = [[RPSTurn alloc] initMove: playersMove];
    RPSTurn *computersTurn = [[RPSTurn alloc] init];
    
    
    //The RPS Game stores the information about the results of the game
    self.game = [[RPSGame alloc] initFirstMove:playersTurn
                                    secondMove:computersTurn];
}

-(NSString*) resultString: (RPSGame*) game {
    return [game.firstTurn defeats:game.secondTurn] ? @"You Win!" : @"You Lose!";
}

-(NSString*)messageForGame:(RPSGame*)game {
    // First, handle the tie
    
    if (game.firstTurn.move == game.secondTurn.move) {
        return @"It's a tie!";
    } else {
        
        // Here we build up the results message "Rock crushes Scissors. You Win!" etc.
        NSString *winnerString = [[game winner] description];
        NSString *loserString = [[game loser]  description];
        NSString *resultString = [self resultString: game];
        
        NSString *wholeString =  [NSString stringWithFormat:@"%@ %@ %@ %@ %@", winnerString, @" defeats ", loserString, @".",  resultString];
        return wholeString;
}
}

@end
