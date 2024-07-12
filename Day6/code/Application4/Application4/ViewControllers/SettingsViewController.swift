//
//  SettingsViewController.swift
//  Application4
//
//  Created by Amit Kulkarni on 12/07/24.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var labelUername: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        let firstName = UserDefaults.standard.value(forKey: "firstName") as! String
        let lastName = UserDefaults.standard.value(forKey: "lastName") as! String
        labelUername.text = "\(firstName) \(lastName)"
    }
    
    @IBAction func onLogout(_ sender: Any) {
        // clear all the cache items
        let userDefaults = UserDefaults.standard
        userDefaults.set("", forKey: "firstName")
        userDefaults.set("", forKey: "lastName")
        userDefaults.set("", forKey: "phone")
        userDefaults.set("", forKey: "token")
        userDefaults.set(false, forKey: "loginStatus")
        
        userDefaults.synchronize()
        
        // go to the login screen
        let sceneDelegate = UIApplication.shared.connectedScenes.first!.delegate as! SceneDelegate
        
        sceneDelegate.startLoginWorkflow()
    }
}
