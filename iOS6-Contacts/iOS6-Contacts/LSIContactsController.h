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


// Nullability Flags

// nullable: var contacts: [Contact]?
// nonnull: var contacts: [Contact]
// null_resettable: (optional) UITextField.text = nil  // = ""
// null_unspecified: (default) var contacts: [Contact]!


@property (nonatomic, readonly, nonnull) NSArray<Contact *> *contacts;
//@property (nonatomic, readonly, nullable) NSArray<Contact *> *contacts;

@end
