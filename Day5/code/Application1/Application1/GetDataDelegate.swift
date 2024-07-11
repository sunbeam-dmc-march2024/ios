//
//  GetDataDelegate.swift
//  Application1
//
//  Created by Amit Kulkarni on 11/07/24.
//

import Foundation

protocol GetDataDelegate {
    func onGetData(name: String, address: String, email: String, phone: String)
}
