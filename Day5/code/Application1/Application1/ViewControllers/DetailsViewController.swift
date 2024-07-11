//
//  DetailsViewController.swift
//  Application1
//
//  Created by Amit Kulkarni on 11/07/24.
//

import UIKit

class DetailsViewController: UIViewController, GetDataDelegate {

    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelPhone: UILabel!
    @IBOutlet weak var labelAddress: UILabel!
    @IBOutlet weak var labelName: UILabel!
    
    var name: String!
    var address: String!
    var email: String!
    var phone: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onGetData(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "InputViewController") as! InputViewController
        vc.delegate = self
        present(vc, animated: true)
    }
    
    func onGetData(name: String, address: String, email: String, phone: String) {
        labelName.text = name
        labelAddress.text = address
        labelEmail.text = email
        labelPhone.text = phone
        
        self.name = name
        self.phone = phone
        self.address = address
        self.email = email
    }
    
}
