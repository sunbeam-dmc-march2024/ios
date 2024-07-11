//
//  DetailsViewController.swift
//  Application7
//
//  Created by Amit Kulkarni on 11/07/24.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var labelCompany: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelPhone: UILabel!
    @IBOutlet weak var labelAddress: UILabel!
    @IBOutlet weak var labelName: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Contact Details"
        
        labelName.text = contact.name
        labelEmail.text = contact.email
        labelPhone.text = contact.phone
        labelAddress.text = contact.address
        labelCompany.text = contact.company
    }
    
}
