//
//  RPSGame.m
//  RockPaperScissors
//
//  Created by Akshay Iyer on 6/18/16.
//  Copyright © 2016 akshaytiyer. All rights reserved.
//

#import "RPSGame.h"

@implementation RPSGame

-(instancetype) initFirstMove: (RPSTurn*) first
                secondMove: (RPSTurn*) second {
    self = [super init];
    
    if(self) {
        _firstTurn = first;
        _secondTurn = second;
    }
    
    return self;
}

@end


