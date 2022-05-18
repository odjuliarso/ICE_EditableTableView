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
    }
       
    var title: String
    var genre: String
    
    // MARK:  Designated initializer (REQUIRED)
    init(title: String, genre: String) {
        self.title = title
        self.genre = genre
    }
    
    // MARK: Convenience initializer (OPTIONAL)
    convenience init(random: Bool = false) {
        if random {
            let adjectives = ["Dark", "Peacful", "Bright"]
            let nouns = ["Mansion", "Alley", "Ceremony"]
            let genre = ["Nonfiction", "Thriller", "Romance"]
            
            let randomAdjective = adjectives.randomElement()!
            let randomNoun = nouns.randomElement()!
            
            let randomTitle = "\(randomAdjective) \(randomNoun)"
            let randomGenre = genre.randomElement()!


            self.init(title: randomTitle, genre: randomGenre)
        } else {
            self.init(title: "", genre: "")
        }
    }
    
    
}
