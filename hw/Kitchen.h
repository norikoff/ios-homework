//
//  Kitchen.h
//  hw
//
//  Created by Юрий Нориков on 29/09/2019.
//  Copyright © 2019 norikoff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RestaurantProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Kitchen : NSObject

@property (nonatomic, weak) id <RestaurantProtocol> delegate;

- (void) cookingDish;

@end

NS_ASSUME_NONNULL_END
