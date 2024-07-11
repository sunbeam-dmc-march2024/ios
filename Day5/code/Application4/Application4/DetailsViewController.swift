//
//  DetailsViewController.swift
//  Application4
//
//  Created by Amit Kulkarni on 11/07/24.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var labelPhone: UILabel!
    @IBOutlet weak var labelName: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelName.text = contact.name
        labelPhone.text = contact.phone
    }
    
    @IBAction func onBack(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
