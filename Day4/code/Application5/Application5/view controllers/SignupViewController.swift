//
//  SignupViewController.swift
//  Application5
//
//  Created by Amit Kulkarni on 10/07/24.
//

import UIKit

class SignupViewController: UIViewController {

    
    @IBOutlet weak var editName: UITextField!
    @IBOutlet weak var editAddress: UITextField!
    @IBOutlet weak var editPhone: UITextField!
    @IBOutlet weak var editCity: UITextField!
    @IBOutlet weak var editEmail: UITextField!
    @IBOutlet weak var editState: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onSave(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        vc.name = editName.text!
        vc.address = editAddress.text!
        vc.phone = editPhone.text!
        vc.email = editEmail.text!
        vc.city = editCity.text!
        vc.state = editState.text!
        present(vc, animated: true)
    }
}
