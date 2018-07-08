//
//  ContactDetailViewController.swift
//  CustomTableViewCell
//
//  Created by Chhaileng Peng on 7/8/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class ContactDetailViewController: UIViewController {
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var name: String?
    var phone: String?
    var image: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let name = name, let phone = phone, let image = image {
            phoneLabel.text = phone
            nameLabel.text = name
            imageView.image = UIImage(named: image)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
