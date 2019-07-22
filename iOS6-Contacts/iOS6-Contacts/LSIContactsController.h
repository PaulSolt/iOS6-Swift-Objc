//
//  LSIContactsController.h
//  iOS6-Contacts
//
//  Created by Paul Solt on 7/22/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;

@interface LSIContactsController : NSObject

// To use Swift in Objective-C Collection you must:
// 1. Contact has to subclass from NSObject
// 2. Expose symbols using the @objc

@property (nonatomic, readonly) NSArray<Contact *> *contacts;

@end
