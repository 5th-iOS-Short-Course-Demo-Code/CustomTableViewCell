//
//  Contact.swift
//  CustomTableViewCell
//
//  Created by Chhaileng Peng on 7/8/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import Foundation

class Contact {
    var name: String
    var phone: String
    var image: String?
    
    init(name: String, phone: String, image: String) {
        self.name = name
        self.phone = phone
        self.image = image
    }
    
}
