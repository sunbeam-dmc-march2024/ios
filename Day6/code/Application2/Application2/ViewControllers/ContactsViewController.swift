//
//  ContactsViewController.swift
//  Application2
//
//  Created by Amit Kulkarni on 12/07/24.
//

import UIKit
import CoreData

class ContactsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    // data source to hold all rows
    var contacts: [NSManagedObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // #selector: used to get reference of objc method
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addContact))
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(loadContacts))
        
        // set datasource and delegate
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        loadContacts()
    }
    
    @objc func loadContacts() {
        
        // step1: get the delegate object
        let delegate = UIApplication.shared.delegate as! AppDelegate
        
        // step2: get the context
        let context = delegate.persistentContainer.viewContext
        
        // step3: create a fetch request
        let request = NSFetchRequest<NSManagedObject>(entityName: "Contact")
        
        // step4: execute the fetch request to get all rows from Contact entity
        let rows = try! context.fetch(request)
        
        // step5: process the response
        contacts.removeAll()
        for row in rows {
            contacts.append(row)
        }
        
        self.tableView.reloadData()
    }

    @objc func addContact() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AddContactViewController") as! AddContactViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let row = contacts[indexPath.row]
        let name = row.value(forKey: "contactName") as! String
        cell.textLabel?.text = name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     
        let alert = UIAlertController(title: "confirmation", message: "Are you sure you want to delete this row ?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "No", style: .destructive))
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {
            alert in
            self.deleteContact(indexPath: indexPath)
        }))
        present(alert, animated: true)
        
    }
    
    func deleteContact(indexPath: IndexPath) {
        
        // get the managed object to be deleted
        let object = contacts[indexPath.row]
        
        // step1: get the delegate object
        let delegate = UIApplication.shared.delegate as! AppDelegate
        
        // step2: get context object
        let context = delegate.persistentContainer.viewContext
        
        // step3: delete the object
        context.delete(object)
        
        // step4: commit the changes
        try! context.save()
     
        // reload the data and tableView
        loadContacts()
    }
}

