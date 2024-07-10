//
//  ViewController.swift
//  Application1
//
//  Created by Amit Kulkarni on 10/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    // properties
    @IBOutlet weak var editPhone: UITextField!
    @IBOutlet weak var editEmail: UITextField!
    @IBOutlet weak var editLastName: UITextField!
    @IBOutlet weak var editFirstName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onSave(_ sender: Any) {
        print("save button tapped")
        
        if editFirstName.text!.count == 0 {
            
            // show an alert to the user
            let alert = UIAlertController(title: "warning", message: "Please enter first name", preferredStyle: .alert)
            
            // add a button
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            
            present(alert, animated: true)
            
        } else if editLastName.text!.count == 0 {
            
            let alert = UIAlertController(title: "warning", message: "Please enter last name", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
            
        } else {
            print("first name: \(editFirstName.text!)")
            print("last name: \(editLastName.text!)")
            print("email: \(editEmail.text!)")
            print("phone: \(editPhone.text!)")
        }
    }
    
    @IBAction func onCancel(_ sender: Any) {
        print("cancel button tapped")
    }
}

