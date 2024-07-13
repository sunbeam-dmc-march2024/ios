//
//  AddViewController.swift
//  FinalApplication
//
//  Created by Amit Kulkarni on 13/07/24.
//

import UIKit

class AddViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var slideRating: UISlider!
    @IBOutlet weak var pickerGenre: UIPickerView!
    @IBOutlet weak var editDirector: UITextField!
    @IBOutlet weak var editActress: UITextField!
    @IBOutlet weak var editActor: UITextField!
    @IBOutlet weak var editTitle: UITextField!
    
    var genres = ["Thriller", "Comedy", "Ramance", "Action", "Horror"]
    
    var delegate: GetMovieDetailsDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerGenre.dataSource = self
        self.pickerGenre.delegate = self
        
        self.navigationItem.title = "Add Movie"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(onSave))
    }
    
    @objc func onSave() {
        let movie = Movie(title: editTitle.text, actor: editActor.text, actrees: editActress.text, director: editDirector.text, genre: genres[pickerGenre.selectedRow(inComponent: 0)], rating: slideRating.value)
        delegate.onGetMovieDetails(movie: movie)
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genres.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genres[row]
    }
    
}
