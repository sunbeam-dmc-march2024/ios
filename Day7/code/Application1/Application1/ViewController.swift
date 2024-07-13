//
//  ViewController.swift
//  Application1
//
//  Created by Amit Kulkarni on 13/07/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var contacts: [Contact] = [
        Contact(name: "contact1", address: "address1", phone: "+912342324", email: "contact1@test.com"),
        Contact(name: "contact2", address: "address2", phone: "+9123423267", email: "contact2@test.com"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cellContact")!
        
        let contact = contacts[indexPath.row]
        
        let labelName = cell.viewWithTag(100) as! UILabel
        let labelAddress = cell.viewWithTag(200) as! UILabel
        let labelEmail = cell.viewWithTag(300) as! UILabel
        let labelPhone = cell.viewWithTag(400) as! UILabel
        
        labelName.text = contact.name
        labelAddress.text = contact.address
        labelEmail.text = contact.email
        labelPhone.text = contact.phone
        
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

