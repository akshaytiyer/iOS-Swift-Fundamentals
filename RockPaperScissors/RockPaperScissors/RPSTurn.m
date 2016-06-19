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

@end
