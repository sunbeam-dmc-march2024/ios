//
//  LoginViewController.swift
//  Application4
//
//  Created by Amit Kulkarni on 12/07/24.
//

import UIKit
import Alamofire

class LoginViewController: BaseViewController {
    
    @IBOutlet weak var editPassword: UITextField!
    @IBOutlet weak var editEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onLogin(_ sender: Any) {
        if editEmail.text!.count == 0 {
            showWarning(message: "Please enter email address")
        } else if editPassword.text!.count == 0 {
            showWarning(message: "Please enter password")
        } else {
            
            // get the signin url
            let url = createUrl(path: "user/signin")
            
            // create the body
            let body = [
                "email": editEmail.text!,
                "password": editPassword.text!
            ]
            
            // create a request
            let request = AF.request(url, method: .post, parameters: body, encoding: JSONEncoding.default)
            
            // send the request object and get the response
            request.response(completionHandler: {response in
                print(response)
                switch response.result {
                    
                case let .success(data):
                    if let data = data {
                        let result = try! JSONSerialization.jsonObject(with: data) as! [String: Any]
                        
                        if result["status"] as! String == "success" {
                            
                            let userData = result["data"] as! [String: String]
                            let firstName = userData["firstName"]!
                            let lastName = userData["lastName"]!
                            let phone = userData["phone"]!
                            let token = userData["token"]!
                            
                            // persist the login status
                            let userDefaults = UserDefaults.standard
                            
                            // add the cache paramters
                            userDefaults.set(firstName, forKey: "firstName")
                            userDefaults.set(lastName, forKey: "lastName")
                            userDefaults.set(phone, forKey: "phone")
                            userDefaults.set(token, forKey: "token")
                            userDefaults.set(true, forKey: "loginStatus")
                            
                            // commit the changes
                            userDefaults.synchronize()
                            
                            // get scene delegate
                            let sceneDelegate = UIApplication.shared.connectedScenes.first!.delegate as! SceneDelegate
                            
                            sceneDelegate.startHomeWorkflow()
                            
                        } else {
                            self.showError(message: result["error"] as! String)
                        }
                        
                    }
                    
                case let .failure(error):
                    print("error: ")
                    print(error)
                    self.showError(message: "Error while sending request")
                }
                
            })
        }
    }
    
}
