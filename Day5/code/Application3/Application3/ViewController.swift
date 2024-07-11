//
//  ViewController.swift
//  Application3
//
//  Created by Amit Kulkarni on 11/07/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let countries = [
        "India", "USA", "UK", "China", "Japan", "Bhutan"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the data source
        // data source: the one which provides the data to tableView
        tableView.dataSource = self
        tableView.delegate = self
    }

    // similar to getCount() of RecyclerView.Adapter
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // indexPath hast two positions
        // - section: section index
        // - row: row index in section
        
        // create a cell
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        // get the respective value from countries array
        // and set it to get rendered in the cell
        cell.textLabel?.text = countries[indexPath.row]
        
        // return the cell to be added at the indexPath position
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Countries"
    }

    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "end of list of countries"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let alert = UIAlertController(title: "selection", message: "You have selected country = \(countries[indexPath.row])", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
        
        // print("You have selected a row at \(indexPath.section):\(indexPath.row) with country = \(countries[indexPath.row])")
        
        // deselect the row
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

