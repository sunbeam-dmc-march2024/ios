//
//  ContactListViewController.swift
//  Application2
//
//  Created by Amit Kulkarni on 11/07/24.
//

import UIKit

class ContactListViewController: UIViewController, GetContactDetailsDelegate {
  
    @IBOutlet weak var labelPhone: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func onAddContact(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AddContactViewController") as! AddContactViewController
        vc.delegate = self
        present(vc, animated: true)
    }
    
    func onGetContactDetails(name: String, email: String, phone: String) {
        
        labelName.text = name
        labelEmail.text = email
        labelPhone.text = phone
    }
    
}
