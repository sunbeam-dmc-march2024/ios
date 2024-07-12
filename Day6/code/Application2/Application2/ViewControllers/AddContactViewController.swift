//
//  AddContactViewController.swift
//  Application2
//
//  Created by Amit Kulkarni on 12/07/24.
//

import UIKit
import CoreData

class AddContactViewController: UIViewController {
    
    @IBOutlet weak var editAddress: UITextField!
    @IBOutlet weak var editPhone: UITextField!
    @IBOutlet weak var editEmail: UITextField!
    @IBOutlet weak var editName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Add Contact"
        
        // #selector: used to get reference of objc method
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveContact))
    }
    
    @objc func saveContact() {
        // step1: get the AppDelegate object
        let delegate = UIApplication.shared.delegate as! AppDelegate
        
        // step2: get the NSManagedObjectContext (context)
        let context = delegate.persistentContainer.viewContext
        
        // step3: insert a row (create a managed object)
        let row = NSEntityDescription.insertNewObject(forEntityName: "Contact", into: context)
        
        // step4: set the values (insert the data)
        row.setValue(editName.text!, forKey: "contactName")
        row.setValue(editAddress.text!, forKey: "address")
        row.setValue(editEmail.text!, forKey: "email")
        row.setValue(editPhone.text!, forKey: "phone")
        
        // step5: commit the inserted object
        try! context.save()
        
        // go back
        self.navigationController?.popViewController(animated: true)
    }
    
}
