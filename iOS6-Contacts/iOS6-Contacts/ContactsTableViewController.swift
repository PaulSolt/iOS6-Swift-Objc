//
//  ContactsTableViewController.swift
//  iOS6-Contacts
//
//  Created by Paul Solt on 7/22/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    var contactsController = ContactsController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactsController.contacts.count
//        return contactsController.contacts?.count ?? 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)

        let contact = contactsController.contacts[indexPath.row]
//        guard let contact = contactsController.contacts?[indexPath.row] else { return cell }
        
        cell.textLabel?.text = contact.name
        cell.detailTextLabel?.text = contact.relationship
        
        return cell
    }

}
