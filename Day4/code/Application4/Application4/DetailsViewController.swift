//
//  DetailsViewController.swift
//  Application4
//
//  Created by Amit Kulkarni on 10/07/24.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelName.text = name
    }
    
    @IBAction func onBack(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
