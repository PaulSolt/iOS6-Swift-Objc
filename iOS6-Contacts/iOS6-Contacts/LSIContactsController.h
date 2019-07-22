//
//  LSIContactsController.h
//  iOS6-Contacts
//
//  Created by Paul Solt on 7/22/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iOS6_Contacts-Swift.h"

//@class Contact;   // Forward delcarations don't work when we use @objc(ClasName) to rename
                    // a class name
//@class LSIContact;


// We can change the name of the Objective-C class exposed to Swift

NS_SWIFT_NAME(ContactsController)
@interface LSIContactsController : NSObject

// To use Swift in Objective-C Collection you must:
// 1. Contact has to subclass from NSObject
// 2. Expose symbols using the @objc


// Nullability Flags

// nullable: var contacts: [Contact]?
// nonnull: var contacts: [Contact]
// null_resettable: (optional) UITextField.text = nil  // = ""
// null_unspecified: (default) var contacts: [Contact]!


@property (nonatomic, readonly, nonnull) NSArray<LSIContact *> *contacts;
//@property (nonatomic, readonly, nullable) NSArray<Contact *> *contacts;

@end
