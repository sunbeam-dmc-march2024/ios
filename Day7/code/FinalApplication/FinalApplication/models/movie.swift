//
//  moview.swift
//  FinalApplication
//
//  Created by Amit Kulkarni on 13/07/24.
//

import Foundation

class Movie {
    var title: String!
    var actor: String!
    var actrees: String!
    var director: String!
    var genre: String!
    var rating: Float!
    
    init(title: String!, actor: String!, actrees: String!, director: String!, genre: String!, rating: Float!) {
        self.title = title
        self.actor = actor
        self.actrees = actrees
        self.director = director
        self.genre = genre
        self.rating = rating
    }
}
