//
//  SecondViewController.swift
//  Application3
//
//  Created by Amit Kulkarni on 10/07/24.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("SecondViewController: viewDidLoad()")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("SecondViewController: viewWillAppear()")
    }

    override func viewDidAppear(_ animated: Bool) {
        print("SecondViewController: viewDidAppear()")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("SecondViewController: viewWillDisappear()")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("SecondViewController: viewDidDisappear()")
    }

    @IBAction func onBack(_ sender: Any) {
        // go back to previous ViewController
        
        // similar to finish() in android
        dismiss(animated: true)
    }
}
