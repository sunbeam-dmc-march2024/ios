//
//  FirstViewController.swift
//  Application5
//
//  Created by Amit Kulkarni on 11/07/24.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add a button on right side
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(launchSecondViewController))
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(launchSecondViewController))
    }
    
    @objc func launchSecondViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        // push the vc into the navigation stack
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

    @IBAction func onPushVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        // push the vc into the navigation stack
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onPresentVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        present(vc, animated: true)
    }
    
}
