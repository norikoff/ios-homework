//
//  Waiter.m
//  hw
//
//  Created by Юрий Нориков on 29/09/2019.
//  Copyright © 2019 norikoff. All rights reserved.
//

#import "Waiter.h"
#import "RestaurantProtocol.h"
#import "Kitchen.h"

@interface Waiter () <RestaurantProtocol>

@property (nonatomic, strong) Kitchen *kitchen;

@end

@implementation Waiter

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.kitchen = [[Kitchen alloc] init];
        self.kitchen.delegate = self;
    }
    return self;
}

- (void)foodDelivery {
    NSLog(@"deliver food");
}

- (void)makeOrder {
    NSLog(@"give order to kitchen");
    [self.kitchen cookingDish];
}

- (void)takeTips {
    NSLog(@"get tips");
}

@end
