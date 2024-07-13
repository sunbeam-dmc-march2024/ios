//
//  ViewController.swift
//  Application4
//
//  Created by Amit Kulkarni on 13/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderAge: UISlider!
    
    @IBOutlet weak var viewColor: UIView!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var labelAge: UILabel!
    
    @IBOutlet weak var sliderAlpha: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onAgeChanged(_ sender: Any) {
        let value = "\(sliderAge.value)"
        let parts = value.split(separator: ".")
        labelAge.text = "\(parts.count > 0 ? String(parts[0]) : value) years"
    }
 
    
    @IBAction func onColorChange(_ sender: Any) {
        viewColor.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: CGFloat(sliderAlpha.value))
    }
    
}

