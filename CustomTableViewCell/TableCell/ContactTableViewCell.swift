//
//  ContactTableViewCell.swift
//  CustomTableViewCell
//
//  Created by Chhaileng Peng on 7/8/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var imageVIew: UIImageView!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(contact: Contact) {
        self.nameLabel.text = contact.name
        self.phoneLabel.text = contact.phone
        self.imageVIew.image = UIImage(named: contact.image!)
    }
    
    
}







