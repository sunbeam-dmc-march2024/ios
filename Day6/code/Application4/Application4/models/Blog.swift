//
//  Blog.swift
//  Application4
//
//  Created by Amit Kulkarni on 12/07/24.
//

import Foundation

class Blog {
    var id: Int!
    var title: String!
    var contents: String!
    var image: String!
    
    init(id: Int!, title: String!, contents: String!, image: String!) {
        self.id = id
        self.title = title
        self.contents = contents
        self.image = image
    }
}
