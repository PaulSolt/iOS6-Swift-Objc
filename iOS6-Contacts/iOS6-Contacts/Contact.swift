//
//  Contact.swift
//  iOS6-Contacts
//
//  Created by Paul Solt on 7/22/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import Foundation

// Struct will not work with Objective-C, we need to use classes if we
// want to use data within Objective-C arrays and other data structures

//@objcMembers // This will work on everything ... best practice is to use @objc
// for what you need to expose

@objc class Contact: NSObject {
    @objc var name: String
    @objc var relationship: String?
    
    @objc init(name: String, relationship: String?) {
        self.name = name
        self.relationship = relationship
    }
}
