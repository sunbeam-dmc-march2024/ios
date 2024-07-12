//
//  File.swift
//  Application7
//
//  Created by Amit Kulkarni on 11/07/24.
//

import Foundation

protocol AddContactDelegate {
    func onAddContact(name: String, address: String, email: String, phone: String, company: String)
}
