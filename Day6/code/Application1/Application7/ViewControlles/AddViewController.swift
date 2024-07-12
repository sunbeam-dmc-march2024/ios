//
//  AddViewController.swift
//  Application7
//
//  Created by Amit Kulkarni on 11/07/24.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var editCompany: UITextField!
    @IBOutlet weak var editAddress: UITextField!
    @IBOutlet weak var editPhone: UITextField!
    @IBOutlet weak var editName: UITextField!
    @IBOutlet weak var editEmail: UITextField!
    
    var delegate: AddContactDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Add Contact"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveContact))
    }
    
    @objc func saveContact() {
        delegate.onAddContact(name: editName.text!, address: editAddress.text!, email: editEmail.text!, phone: editPhone.text!, company: editCompany.text!)
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
