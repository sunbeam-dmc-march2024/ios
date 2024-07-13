//
//  DetailsViewController.swift
//  FinalApplication
//
//  Created by Amit Kulkarni on 13/07/24.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelRating: UILabel!
    @IBOutlet weak var labelGenre: UILabel!
    @IBOutlet weak var labelDirector: UILabel!
    @IBOutlet weak var labelActress: UILabel!
    @IBOutlet weak var labelActor: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Details"
        
        labelTitle.text = movie.title
        labelActor.text = movie.actor
        labelActress.text = movie.actrees
        labelDirector.text = movie.director
        labelGenre.text = movie.genre
        labelRating.text = "\(movie.rating!)/5"
    }
    
}
