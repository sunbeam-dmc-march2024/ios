//
//  config.swift
//  Application4
//
//  Created by Amit Kulkarni on 12/07/24.
//

import Foundation

let serverUrl = "http://localhost:4000"

func createUrl(path: String) -> String {
    return "\(serverUrl)/\(path)"
}
