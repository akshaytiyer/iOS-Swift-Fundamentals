//
//  House.h
//  House
//
//  Created by Akshay Iyer on 6/18/16.
//  Copyright © 2016 akshaytiyer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bedroom.h"

@interface House: NSObject

@property (nonatomic, copy) NSString *address;
@property (nonatomic,readonly) int numberOfBedrooms;
@property (nonatomic) BOOL hasHotTub;

@property (nonatomic) Bedroom *frontBedroom;
@property (nonatomic) Bedroom *backBedroom;


-(instancetype) initWithAddress: (NSString*) address;

@end
