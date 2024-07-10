//
//  ViewController.swift
//  Application3
//
//  Created by Amit Kulkarni on 10/07/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var editName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController: viewDidLoad()")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("ViewController: viewWillAppear()")
    }

    override func viewDidAppear(_ animated: Bool) {
        print("ViewController: viewDidAppear()")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("ViewController: viewWillDisappear()")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("ViewController: viewDidDisappear()")
    }
    
    
    
    @IBAction func onSave(_ sender: Any) {
        // launch second view controller
        
        // step 1: load the main storyboard file
        // - bundle: the application directory where the storyboard file exists
        // - bundle = nil: the current application bundle
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // step 2: instanciate the second view controller using storyboard
        // - load the view controller ui from storyboard
        // - create an object of associated class
        // - set the connections
        // - retur the class object
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        
        // step 3: launch the view controller
        present(vc, animated: true)
    }
    
    
    @IBAction func onThirdVC(_ sender: Any) {
        // step 1
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // step 2
        let vc = storyboard.instantiateViewController(withIdentifier: "ThirdViewController")
        
        // step 3
        present(vc, animated: true)
    }
    
}

