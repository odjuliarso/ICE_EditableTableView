//
//  BookStore.swift
//  ICE_EditableTableView
//
//  Created by Student Account on 5/17/22.
//

import Foundation
import UIKit

class Book {
    
    
    var title: String
    var genre: String
    var value: Int
    
    // MARK:  Designated initializer (REQUIRED)
    init(title: String, genre: String, value: Int) {
        self.title = title
        self.genre = genre
        self.value = value
    }
    
    // MARK: Convenience initializer (OPTIONAL)
    convenience init(random: Bool = false) {
        if random {
            let adjectives = ["Harry", "Rusty", "Shiny"]
            let nouns = ["Bear", "Spork", "Mac"]
            let genre = ["Nonfiction", "Thriller", "Romance"]
            
            let randomAdjective = adjectives.randomElement()!
            let randomNoun = nouns.randomElement()!
            let randomGenre = genre.randomElement()!
            
            let randomTitle = "\(randomAdjective) \(randomNoun)"
            let randomValue = Int.random(in: 0..<100)
            

            self.init(title: randomTitle,
                      genre: randomGenre,
                      value: randomValue)
        } else {
            self.init(title: "", genre: "", value: 0)
        }
    }
}
