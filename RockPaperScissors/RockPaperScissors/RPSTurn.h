//
//  RPSTurn.h
//  RockPaperScissors
//
//  Created by Akshay Iyer on 6/18/16.
//  Copyright © 2016 akshaytiyer. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Move) {
    Rock,
    Paper,
    Scissor
};

@interface RPSTurn : NSObject

@property (nonatomic) Move move;

-(instancetype) initMove: (Move) move;

@end
