//
//  ViewController.swift
//  Application3
//
//  Created by Amit Kulkarni on 12/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var editName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onRead(_ sender: Any) {
        // get the userdefaults current object
        let userDefaults = UserDefaults.standard
        
        // get data
        let name = userDefaults.value(forKey: "name")
        
        print("name = \(name!)")
    }
    
    @IBAction func onSave(_ sender: Any) {
        // UserDefaults
        // - similar to SharedPreferences in android
        // - meant for storing simple values like String, Int, Boolean
        // - uses singleton pattern
        // - it is a dictionary (collection of key-values pairs)
        
        // get the current user default object
        let userDefaults = UserDefaults.standard
        
        // save the data
        userDefaults.set(editName.text!, forKey: "name")
        
        // commit the changes
        userDefaults.synchronize()
    }
}

