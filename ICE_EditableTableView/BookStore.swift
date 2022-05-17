//
//  BookStore.swift
//  ICE_EditableTableView
//
//  Created by Student Account on 5/17/22.
//

import Foundation

import UIKit

class BookStore {
    var allBooks = [Book]()
    
    // Adding an item creation method
    @discardableResult func createBook() -> Book {
        let newBook = Book(random: true)
        allBooks.append(newBook)
        return newBook
    }
    
    init() {
        for _ in 0..<7 {
            createBook()
        }
    }
}
