//
//  RegisterViewController.swift
//  Application4
//
//  Created by Amit Kulkarni on 12/07/24.
//

import UIKit
import Alamofire

class RegisterViewController: BaseViewController {
    
    @IBOutlet weak var editPhone: UITextField!
    @IBOutlet weak var editConfirmPassword: UITextField!
    @IBOutlet weak var editPassword: UITextField!
    @IBOutlet weak var editFirstname: UITextField!
    @IBOutlet weak var editEmail: UITextField!
    @IBOutlet weak var editLastname: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func onRegister(_ sender: Any) {
        if editFirstname.text!.count == 0 {
            showWarning(message: "Please enter first name")
        } else if editLastname.text!.count == 0 {
            showWarning(message: "Please enter last name")
        } else if editEmail.text!.count == 0 {
            showWarning(message: "Please enter email")
        } else if editPhone.text!.count == 0 {
            showWarning(message: "Please enter phone number")
        } else if editPassword.text!.count == 0 {
            showWarning(message: "Please enter password")
        } else if editConfirmPassword.text!.count == 0 {
            showWarning(message: "Please confirm password")
        } else if editPassword.text! != editConfirmPassword.text! {
            showWarning(message: "Password does not match")
        } else {
            
            // create url
            let url = createUrl(path: "user/signup")
            
            // create the body
            let body = [
                "firstName": editFirstname.text!,
                "lastName": editLastname.text!,
                "email": editEmail.text!,
                "phone": editPhone.text!,
                "password": editPassword.text!
            ]
            
            // create request object
            let request = AF.request(url, method: .post, parameters: body, encoding: JSONEncoding.default)
            
            // send the request and get the response
            request.response(completionHandler: { response in
                
                // check if success of failure
                switch response.result {
                case let .success(data):
                    if let data = data {
                        
                        // typecast the data to a dictionary
                        let result = try! JSONSerialization.jsonObject(with: data) as! [String: Any]
                        
                        if result["status"] as! String == "success" {
                            self.navigationController?.popViewController(animated: true)
                        }
                    
                    }
                    
                case let .failure(error):
                    print(error)
                }
            })
            
            
        }
    }
}
