//
//  Kitchen.m
//  hw
//
//  Created by Юрий Нориков on 29/09/2019.
//  Copyright © 2019 norikoff. All rights reserved.
//

#import "Kitchen.h"
#import "RestaurantProtocol.h"

@interface Kitchen ()

@end

@implementation Kitchen

- (void) cookingDish{
    NSLog(@"prepare dish");
    [NSThread sleepForTimeInterval:5.0f];
    NSLog(@"Dish prepared");
    [self.delegate foodDelivery];
}

@end
