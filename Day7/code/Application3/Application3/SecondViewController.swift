//
//  SecondViewController.swift
//  Application3
//
//  Created by Amit Kulkarni on 13/07/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var segmentedControlGender: UISegmentedControl!
    
    @IBOutlet weak var segmentedControlInformation: UISegmentedControl!
    @IBOutlet weak var viewTechnical: UIView!
    @IBOutlet weak var viewProfessional: UIView!
    @IBOutlet weak var viewAcademic: UIView!
    @IBOutlet weak var viewPersonal: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewAcademic.isHidden = true
        viewProfessional.isHidden = true
        viewTechnical.isHidden = true
    }
    
    @IBAction func onSave(_ sender: Any) {
        if segmentedControlGender.selectedSegmentIndex == 0 {
            print("gender = Male")
        } else if segmentedControlGender.selectedSegmentIndex == 1 {
            print("gender = Female")
        }
    }
    
    
    @IBAction func onValueChange(_ sender: Any) {
        if segmentedControlInformation.selectedSegmentIndex == 0 {
            viewPersonal.isHidden = false
            viewAcademic.isHidden = true
            viewProfessional.isHidden = true
            viewTechnical.isHidden = true
        } else if segmentedControlInformation.selectedSegmentIndex == 1 {
            viewPersonal.isHidden = true
            viewAcademic.isHidden = false
            viewProfessional.isHidden = true
            viewTechnical.isHidden = true
        } else if segmentedControlInformation.selectedSegmentIndex == 2 {
            viewPersonal.isHidden = true
            viewAcademic.isHidden = true
            viewProfessional.isHidden = false
            viewTechnical.isHidden = true
        } else if segmentedControlInformation.selectedSegmentIndex == 3 {
            viewPersonal.isHidden = true
            viewAcademic.isHidden = true
            viewProfessional.isHidden = true
            viewTechnical.isHidden = false
        }
    }
    
}
