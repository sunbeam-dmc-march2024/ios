//
//  ThirdViewController.swift
//  Application4
//
//  Created by Amit Kulkarni on 13/07/24.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var slideSpeed: UISlider!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var viewColor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onColorChange(_ sender: Any) {
        let control = sender as! UISegmentedControl
        
        UIView.animate(withDuration: 2, animations: {
            if control.selectedSegmentIndex == 0 {
                self.viewColor.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            } else if control.selectedSegmentIndex == 1 {
                self.viewColor.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
            } else if control.selectedSegmentIndex == 2 {
                self.viewColor.backgroundColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
            } else if control.selectedSegmentIndex == 3 {
                self.viewColor.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
            }
        })
        
        
    }
    
  
    @IBAction func onScale(_ sender: Any) {
        UIView.animate(withDuration: TimeInterval(slideSpeed.value), animations: {
            self.imageView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }, completion: {completed in
            
            UIView.animate(withDuration: TimeInterval(self.slideSpeed.value), animations: {
                self.imageView.transform = CGAffineTransform(scaleX: 1, y: 1)
            })
            
        })
    }
    
    @IBAction func onRotate(_ sender: Any) {
        UIView.animate(withDuration: TimeInterval(slideSpeed.value), animations: {
            self.imageView.transform = CGAffineTransform(rotationAngle: 45)
        }, completion: {completed in
            
            UIView.animate(withDuration: TimeInterval(self.slideSpeed.value), animations: {
                self.imageView.transform = CGAffineTransform(rotationAngle: 0)
            })
            
        })
    }
    
    @IBAction func onTranslate(_ sender: Any) {
        UIView.animate(withDuration: TimeInterval(slideSpeed.value), animations: {
            self.imageView.transform = CGAffineTransform(translationX: 100, y: 0)
        }, completion: {completed in
            
            UIView.animate(withDuration: TimeInterval(self.slideSpeed.value), animations: {
                self.imageView.transform = CGAffineTransform(translationX: 0, y: 0)
            })
            
        })
    }
    
    
}
