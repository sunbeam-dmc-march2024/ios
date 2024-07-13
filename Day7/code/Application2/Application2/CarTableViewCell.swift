//
//  CarTableViewCell.swift
//  Application2
//
//  Created by Amit Kulkarni on 13/07/24.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelCompany: UILabel!
    @IBOutlet weak var viewColor: UIView!
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var labelModel: UILabel!
    @IBOutlet weak var carImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
