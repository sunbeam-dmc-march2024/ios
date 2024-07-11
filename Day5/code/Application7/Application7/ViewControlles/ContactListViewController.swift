//
//  ContactListViewController.swift
//  Application7
//
//  Created by Amit Kulkarni on 11/07/24.
//

import UIKit

class ContactListViewController: UIViewController, AddContactDelegate, UITableViewDataSource, UITableViewDelegate {
    
    // persistence
    // - database: sqlite (CoreData)
    // - sharedpreferences (UserDefaults)
    // - file (NSFile) -> NSObject, NSString
    // - content provider -> NA
    
    // cocoapods (sudo gem install cocoapods)
    // - alamofire
    
    @IBOutlet weak var tableView: UITableView!
    var contacts: [Contact] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addContact))
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    @objc func addContact() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AddViewController") as! AddViewController
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func onAddContact(name: String, address: String, email: String, phone: String, company: String) {
        
        contacts.append(Contact(name: name, address: address, email: email, phone: phone, company: company))
        
        // refresh the table view
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = contacts[indexPath.row].name
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        vc.contact = contacts[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
 
}
