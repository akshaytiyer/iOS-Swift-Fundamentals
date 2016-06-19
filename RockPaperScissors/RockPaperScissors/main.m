//
//  main.m
//  RockPaperScissors
//
//  Created by Akshay Iyer on 6/18/16.
//  Copyright © 2016 akshaytiyer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        RPSController *gameController = [[RPSController alloc] init];
        [gameController throwDown: Rock];
        NSString *resultsMessage = [gameController messageForGame:gameController.game];
        NSLog(@"%@", resultsMessage);
    }
    return 0;
}
