//
//  BookStore.swift
//  ICE_EditableTableView
//
//  Created by Student Account on 5/17/22.
//

import UIKit

class Book: Equatable {
    
    static func == (lhs: Book, rhs: Book) -> Bool {
        return lhs.title == rhs.title
        && lhs.genre == rhs.genre
        && lhs.price == rhs.price
    }
    
    var title: String
    var genre: String
    var price: Int
    
    // MARK:  Designated initializer (REQUIRED)
    init(title: String, genre: String, price: Int) {
        self.title = title
        self.genre = genre
        self.price = price
    }
    
    // MARK: Convenience initializer (OPTIONAL)
    convenience init(random: Bool = false) {
        if random {
            let adjectives = ["Dark", "Peaceful", "Bright"]
            let nouns = ["Mansion", "Alley", "Ceremony"]
            let genre = ["Nonfiction", "Thriller", "Romance"]
            
            let randomAdjective = adjectives.randomElement()!
            let randomNoun = nouns.randomElement()!
            
            let randomTitle = "\(randomAdjective) \(randomNoun)"
            let randomGenre = genre.randomElement()!
            let randomePrice = Int.random(in: 1...99)
            
            self.init(title: randomTitle,
                      genre: randomGenre,
                      price: randomePrice)
        } else {
            self.init(title: "", genre: "", price: 0)
        }
    }
    
    
}
