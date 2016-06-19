//
//  RPSTurn.m
//  RockPaperScissors
//
//  Created by Akshay Iyer on 6/18/16.
//  Copyright © 2016 akshaytiyer. All rights reserved.
//

#import "RPSTurn.h"

@implementation RPSTurn

-(instancetype) initMove: (Move) move {
    self = [super init];
    
    if(self) {
        _move = move;
    }
    
    return self;
}

-(instancetype) init {
    self = [super init];
    
    if(self) {
        _move = [self generateMove];
    }
    
    return self;
}


-(Move) generateMove {
    NSUInteger randomNumber = arc4random_uniform(3);
    
    switch(randomNumber) {
        case 0:
            return Rock;
            break;
        case 1:
            return Paper;
            break;
        case 2:
            return Scissor;
            break;
        default:
            return Invalid;
            break;
    }
    
    return Rock;
}

-(BOOL) defeats: (RPSTurn*) turn {
    if((self.move == Paper && turn.move == Rock) ||
       (self.move == Rock && turn.move == Scissor) ||
       (self.move == Scissor && turn.move == Paper))
    {
        return true;
    }
    else
    {
        return false;
    }
    
}

-(NSString*) description
{
    switch(self.move) {
        case Rock :
            return @"Rock";
        case Paper:
            return @"Paper";
        case Scissor:
            return @"Scissor";
        case Invalid:
            return @"Invalid";
    }
}



@end
