//
//  RPSController.h
//  RockPaperScissors
//
//  Created by Akshay Iyer on 6/18/16.
//  Copyright © 2016 akshaytiyer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSGame.h"

@interface RPSController : NSObject

@property (nonatomic) RPSGame *game;
-(void) throwDown: (Move) playersMove;
-(NSString*)messageForGame:(RPSGame*)game;
-(NSString*) resultString: (RPSGame*) game;
@end
