//
//  RestaurantProtocol.h
//  hw
//
//  Created by Юрий Нориков on 29/09/2019.
//  Copyright © 2019 norikoff. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol RestaurantProtocol <NSObject>

- (void)makeOrder;

- (void)foodDelivery;

- (void)takeTips;

@end

NS_ASSUME_NONNULL_END
