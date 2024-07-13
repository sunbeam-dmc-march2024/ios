//
//  SecondViewController.swift
//  Application4
//
//  Created by Amit Kulkarni on 13/07/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var stepperQty: UIStepper!
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var labelQty: UILabel!
    @IBOutlet weak var switchAnswer: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelMessage.isHidden = true
    }
    
    @IBAction func onSave(_ sender: Any) {
        if switchAnswer.isOn {
            print("Students are still interested leaning iOS ????")
        } else {
            print("Students are NOT at all interested leaning iOS")
        }
    }
    
    @IBAction func onValueChange(_ sender: Any) {
        labelMessage.isHidden = !switchAnswer.isOn
    }
    
    @IBAction func onQuantityChange(_ sender: Any) {
        labelQty.text = "\(stepperQty.value)"
    }
}
