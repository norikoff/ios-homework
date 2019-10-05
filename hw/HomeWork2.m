//
//  HomeWork2.m
//  hw
//
//  Created by Юрий Нориков on 29/09/2019.
//  Copyright © 2019 norikoff. All rights reserved.
//

#import "HomeWork2.h"
#import "Waiter.h"
#import "Kitchen.h"

@implementation HomeWork2


-(void) task{
    Waiter *waiter = [Waiter new];
    NSLog(@"Create order");
    [waiter makeOrder];
    [waiter takeTips];
    NSLog(@"Eat");
}

@end
