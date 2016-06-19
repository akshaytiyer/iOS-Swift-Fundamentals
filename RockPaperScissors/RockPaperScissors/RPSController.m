//
//  RPSController.m
//  RockPaperScissors
//
//  Created by Akshay Iyer on 6/18/16.
//  Copyright © 2016 akshaytiyer. All rights reserved.
//

#import "RPSController.h"
#import "RPSTurn.h"

@implementation RPSController

-(void) throwDown: (Move) playersMove {
 
    //Here the RPSTurn class generates the opponents move
    RPSTurn *playersTurn = [[RPSTurn alloc] initMove: playersMove];
    RPSTurn *computersTurn = [[RPSTurn alloc] init];
    
    
    //The RPS Game stores the information about the results of the game
    self.game = [[RPSGame alloc] initFirstMove:playersTurn
                                    secondMove:computersTurn];
    
}

@end
