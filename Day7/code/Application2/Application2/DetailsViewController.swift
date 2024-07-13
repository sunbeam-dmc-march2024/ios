//
//  DetailsViewController.swift
//  Application2
//
//  Created by Amit Kulkarni on 13/07/24.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var labelCompany: UILabel!
    @IBOutlet weak var labelModel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var car: Car!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Details"
        
        labelModel.text = car.model
        labelCompany.text = car.company
        labelPrice.text = car.price
        imageView.image = UIImage(named: car.image)
    }
    
}
