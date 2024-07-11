//
//  AddContactViewController.swift
//  Application2
//
//  Created by Amit Kulkarni on 11/07/24.
//

import UIKit

class AddContactViewController: UIViewController {

    @IBOutlet weak var editPhone: UITextField!
    @IBOutlet weak var editEmail: UITextField!
    @IBOutlet weak var editName: UITextField!
    
    var delegate: GetContactDetailsDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func onSave(_ sender: Any) {
        
        if editName.text!.count == 0 {
            let alert = UIAlertController(title: "warning", message: "Please enter name", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        } else if editEmail.text!.count == 0 {
            let alert = UIAlertController(title: "warning", message: "Please enter email", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        } else if editPhone.text!.count == 0 {
            let alert = UIAlertController(title: "warning", message: "Please enter phone", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        } else {
            
            self.delegate.onGetContactDetails(name: editName.text!, email: editEmail.text!, phone: editPhone.text!)
            dismiss(animated: true)
        }
    }
}
