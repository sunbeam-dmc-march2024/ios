//
//  ViewController.swift
//  Application2
//
//  Created by Amit Kulkarni on 13/07/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var cars: [Car] = [
        Car(model: "model1", company: "company1", price: "10L", color: "color1", image: "car1"),
        Car(model: "model2", company: "company2", price: "20L", color: "color2", image: "car2"),
        Car(model: "model3", company: "company3", price: "30L", color: "color3", image: "car3"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCar") as! CarTableViewCell
        
        let car = cars[indexPath.row]
        
        cell.labelModel.text = car.model
        cell.labelPrice.text = car.price
        cell.labelCompany.text = car.company
        
        cell.viewColor.backgroundColor = UIColor(named: car.color)
        cell.carImageView.image = UIImage(named: car.image)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        vc.car = cars[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

