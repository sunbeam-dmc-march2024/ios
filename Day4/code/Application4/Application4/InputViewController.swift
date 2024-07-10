//
//  InputViewController.swift
//  Application4
//
//  Created by Amit Kulkarni on 10/07/24.
//

import UIKit

class InputViewController: UIViewController {

    @IBOutlet weak var editName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func onSave(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        vc.name = editName.text!
        present(vc, animated: true)
    }
    
}
