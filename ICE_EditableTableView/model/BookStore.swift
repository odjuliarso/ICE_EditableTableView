//
//  BookStore.swift
//  ICE_EditableTableView
//
//  Created by Student Account on 5/17/22.
//

import UIKit

class BookStore {
    
    var allBooks = [Book]()
    
    // 'Adding an item' creation method
    @discardableResult func createBook() -> Book {
        let newBook = Book(random: true)
        allBooks.append(newBook)
        return newBook
    }
    
    // 'Removing an item' method
    public func remove(atIndex: Int) {
        allBooks.remove(at: atIndex)
    }
    
}
