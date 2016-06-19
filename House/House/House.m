//
//  House.m
//  House
//
//  Created by Akshay Iyer on 6/18/16.
//  Copyright © 2016 akshaytiyer. All rights reserved.
//


#import "House.h"

@interface House()
@property (nonatomic, readwrite) int numberOfBedrooms;
@end

@implementation House

-(instancetype) initWithAddress: (NSString*) address  {
    self = [super init];
    
    if (self) {
        _address = [address copy];
        _numberOfBedrooms = 2;
        _hasHotTub = false;
    }
    
    return self;
}

@end