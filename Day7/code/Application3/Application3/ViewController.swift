//
//  ViewController.swift
//  Application3
//
//  Created by Amit Kulkarni on 13/07/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
   
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var pickerView: UIPickerView!
    

    var cities = ["Pune", "Mumbai", "Nashik", "Satara", "Karad", "Nagar"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.dataSource = self
        self.pickerView.delegate = self
    }

    @IBAction func onSave(_ sender: Any) {
        let index = pickerView.selectedRow(inComponent: 0)
        print("You have selected: \(cities[index])")
        
        let date = datePicker.date
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY-MM-dd HH:mm:ss"
        print("You have selected: \(formatter.string(from: date))")
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cities.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cities[row]
    }
}

