//
//  LSIContactsController.m
//  iOS6-Contacts
//
//  Created by Paul Solt on 7/22/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSIContactsController.h"

#import "iOS6_Contacts-Swift.h"

@implementation LSIContactsController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = @[
                      [[LSIContact alloc] initWithName:@"Paul" relationship:@"Myself"],
                        [[LSIContact alloc] initWithName:@"Steph" relationship:@"Wife"]
                      ];
    }
    return self;
}

@end
