//
//  InputViewController.swift
//  Application1
//
//  Created by Amit Kulkarni on 11/07/24.
//

import UIKit

class InputViewController: UIViewController {

    @IBOutlet weak var editEmail: UITextField!
    @IBOutlet weak var editName: UITextField!
    @IBOutlet weak var editPhone: UITextField!
    @IBOutlet weak var editAddress: UITextField!
    
    // reference of class which implements GetDataDelegate protocol
    var delegate: GetDataDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func onSave(_ sender: Any) {
        let name = editName.text!
        let email = editEmail.text!
        let address = editAddress.text!
        let phone = editPhone.text!
        
        self.delegate.onGetData(name: name, address: address, email: email, phone: phone)
        
        dismiss(animated: true)
    }
}
