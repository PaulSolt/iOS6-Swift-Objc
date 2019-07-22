//
//  PersonTableViewCell.swift
//  iOS6-Hybrid-StarWarsSearch
//
//  Created by Paul Solt on 7/22/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

@objc(LSIPersonTableViewCell)
class PersonTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var birthYearLabel: UILabel!
    @IBOutlet var eyeColorLabel: UILabel!
    
    // TODO: add a property to take a LSIPerson and updateViews() based on that
}
