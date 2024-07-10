//
//  ProfileViewController.swift
//  Application5
//
//  Created by Amit Kulkarni on 10/07/24.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelState: UILabel!
    @IBOutlet weak var labelCity: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelPhone: UILabel!
    @IBOutlet weak var labelAddress: UILabel!
    
    
    var name: String!
    var address: String!
    var phone: String!
    var email: String!
    var city: String!
    var state: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        labelName.text = name
        labelAddress.text = address
        labelPhone.text = phone
        labelEmail.text = email
        labelCity.text = city
        labelState.text = state
    }
    
    @IBAction func onBack(_ sender: Any) {
        dismiss(animated: true)
    }
}
