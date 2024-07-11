//
//  SecondViewController.swift
//  Application5
//
//  Created by Amit Kulkarni on 11/07/24.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onDismiss(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func onPop(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
