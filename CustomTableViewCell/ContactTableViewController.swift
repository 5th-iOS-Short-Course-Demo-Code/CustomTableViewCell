//
//  ContactTableViewController.swift
//  CustomTableViewCell
//
//  Created by Chhaileng Peng on 7/8/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class ContactTableViewController: UITableViewController {

    var contacts: [Contact] =
        [Contact(name: "Dara", phone: "012909090", image: "1"),
         Contact(name: "Daro", phone: "012909090", image: "2"),
         Contact(name: "Sok", phone: "012909090", image: "3"),
         Contact(name: "Sao", phone: "012909090", image: "1"),
         Contact(name: "Bopha", phone: "012909090", image: "2"),
         Contact(name: "Kanha", phone: "012909090", image: "3"),
         Contact(name: "Seiha", phone: "012909090", image: "1"),
         Contact(name: "Tola", phone: "012909090", image: "2")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("ContactTableViewCell", owner: self, options: nil)?.first as! ContactTableViewCell

        cell.selectionStyle = .none
        cell.configureCell(contact: contacts[indexPath.row])

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detail = self.storyboard?.instantiateViewController(withIdentifier: "contactDetailScreen") as! ContactDetailViewController
        
        detail.name = contacts[indexPath.row].name
        detail.phone = contacts[indexPath.row].phone
        detail.image = contacts[indexPath.row].image
        
        navigationController?.pushViewController(detail, animated: true)
        
    }

}
