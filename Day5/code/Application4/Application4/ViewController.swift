//
//  ViewController.swift
//  Application4
//
//  Created by Amit Kulkarni on 11/07/24.
//

import UIKit

class Contact {
    var name: String!
    var phone: String!
    
    init(name: String!, phone: String!) {
        self.name = name
        self.phone = phone
    }
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    // collection of contacts
    var contacts: [Contact] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add dummy contacts
        contacts.append(Contact(name: "contact1", phone: "+91234434"))
        contacts.append(Contact(name: "contact2", phone: "+91454553"))
        
        // set the datasource
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = contacts[indexPath.row].name
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let contact = contacts[indexPath.row]
        
        let alert = UIAlertController(title: "selection", message: "You have selected contact \(contact.name!) [\(contact.phone!)]", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
//        vc.contact = contact
//        present(vc, animated: true)
    }
}

